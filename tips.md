### How to use log in the cookbook?
  * https://docs.chef.io/resource_log.html
  * use log resource
      ```
      log 'message' do
        message 'A message add to the log.'
      level :info
      ```
    end
  
  * use Chef::Log
      ```
      unless node['splunk']['upgrade_enabled']
        Chef::Log.fatal('The chef-splunk::upgrade recipe was added to the node,')
        Chef::Log.fatal('but the attribute `node["splunk"]["upgrade_enabled"]` was not set.')
        Chef::Log.fatal('I am bailing here so this node does not upgrade.')
        raise
      end
      ```
      
### How to check if a file/directory exist?
   ```
   File.exist("file")           #check if a file exists
   File.directory?("directory") #check if a directory exists
   Dir.exist?("directory")      #check if a directory exists
   Dir["directory"].empty?      #check if a directory is empty
   ```
   
### How to call variables in Chef cookbook
   ```
    #{a}     #in receipts, to stringalize a variable
    @{a}     #in templates, to refer to a variable passed from outside
   ```
