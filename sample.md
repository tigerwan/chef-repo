### attributes/default.rb
    node.default['test']['env']['tmp_dir'] = '/tmp'
    node.default['test']['env']['file_list'] = ['file1','file2']

### recipes/test.rb
    file_list = node.['test']['env']['file_list']
    tmp_dir = node.['test']['env']['tmp_dir']
    file_list.each do |each_file|
      template "/tmp/#{each_file}" do
        source "#{tmp_dir}/#{each_file}.erb"
        variables(
          var1: "haha"
        )
      end
    end

### templates/default/file1.erb
    myvar= <%= @var1 %>
    

### spec/unit/recipes/test.rb
    require 'spec_helper'
        
    describe 'cookbook_name::test' do
    let(:chef_run) do
            runner_params = {
              platform: 'redhat',
              version: '6.8',
            }
            ChefSpec::SoloRunner.new(runner_params).converge(described_recipe)
    end

    before do
        # avoid breaking all of core chef wherever it calls File.exist? with other arguments
        allow(File).to receive(:exist?).and_call_original
    end

    it 'download rpm package' do
        expect(chef_run).to create_remote_file('/tmp/a.rpm')
    end

    it 'install rpm package' do
        expect(chef_run).to upgrade_rpm_package('/tmp/a.rpm')
    end

    ['file1', 'file2'].each do |conf_file|
        it "creates config file #{conf_file}" do
          expect(chef_run).to create_template("/tmp/#{conf_file}")
        end
        it "#{conf_file} notify service[x]" do
          myresource = chef_run.template("/tmp/#{conf_file}")
          expect(myresource).to notify('service[x]').to(:restart)
        end
    end

    it 'set init password when /tmp/file1 if it does not exist' do
      expect(File).to receive(:exist?).with('/tmp/file1').and_return(false)
      expect(chef_run).to run_execute('init password')
    end

    it 'enable service if /tmp/file1' do
      expect(File).to receive(:exist?).with('/tmp/file1').and_return(false)
      expect(chef_run).to run_execute('enable x service')
    end

    it 'x service' do
      # expect(chef_run).to nothing_service('x')
      myservice = chef_run.service('x')
      expect(myservice).to do_nothing
    end
end
    
