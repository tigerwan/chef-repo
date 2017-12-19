#### Foodcritic
    foodcritic [cookbook_paths]
        -t, --tags TAGS                  Check against (or exclude ~) rules with the specified tags.
        -l, --list                       List all enabled rules and their descriptions.
        -f, --epic-fail TAGS             Fail the build based on tags. Default of 'any' to fail on all warnings.
        -c, --chef-version VERSION       Only check against rules valid for this version of Chef.
        -B, --cookbook-path PATH         Cookbook path(s) to check.
        -C, --[no-]context               Show lines matched against rather than the default summary.
        -E, --environment-path PATH      Environment path(s) to check.
        -I, --include PATH               Additional rule file path(s) to load.
        -G, --search-gems                Search rubygems for rule files with the path foodcritic/rules/**/*.rb
        -P, --[no-]progress              Show progress of files being checked. default: true
        -R, --role-path PATH             Role path(s) to check.
        -S, --search-grammar PATH        Specify grammar to use when validating search syntax.
        -V, --version                    Display the foodcritic version.
        -X, --exclude PATH               Exclude path(s) from being linted. PATH is relative to the cookbook, not an absolute PATH. Default test/**/*,spec/**/*,features/**/*
    sample: foodcritic . --tags ~FC071 --tags ~opensource 
    
#### Cookstyle
    cookstyle [cookbook_paths]
    sample: cooksyle recipies/*
        
#### Berks 
    - berks apply ENVIRONMENT (options)             # apply Berksfile version locks to the named environment on the Chef server.
    - berks contingent COOKBOOK (options)           # list all cookbooks in a Berksfile that depend on the named cookbook
    - berks info COOKBOOK (options)                 # display the name, author, copyright, and dependcy information for the named cookbook
    - berks init                                    # initialize Berkshelf to the specified directory
    - berks install (options)                       # install cookbooks into the cache. This command generates the Berkshelf lock file that ensures consistency.
    - berks list (options)                          # list cookbooks and their dependencies
    - berks outdated COOKBOOK (options)             # list dependencies for the named cookbook, and then check if there are new versions available for version constraints that may exist.
    - berks package PATH (options)                  # to vendor, and then archive the dependencies of a Berksfile.
    - berks search QUERY (options)                  # search the remote source for cookbooks that match the search query. The query itself will match partial cookbook names.
    - berks test KITCHEN_COMMAND (options)          # run Test Kitchen from within Berkshelf
    - berks show COOKBOOK (options)                 # show the path to the named cookbook
    - berks update COOKBOOK (options)               # update the named cookbook or cookbooks (and any dependencies)
    - berks upload COOKBOOK (options)               # upload the named cookbook to the Chef server
    - berks vendor PATH (options)                   # vendor groups of cookbooks (as specified by group name) into a directory.
    - berks verify (options)                        # perform a validation of the contents of resolved cookbooks
    - berks viz (options)                           # display the version of Berkshelf.
    sample: berks install  (create Berksfile.lock and VERSION)
            berks upload   (upload to chef server)
    
#### Kitchen
    - kitchen console                                 # Kitchen Console!
    - kitchen converge [INSTANCE|REGEXP|all]          # Change instance state to converge. Use a provisioner to configure one or more instances (kitchen converge=kitchen create + run chef-client to converge)
    - kitchen create [INSTANCE|REGEXP|all]            # Change instance state to create. Start one or more instances
    - kitchen destroy [INSTANCE|REGEXP|all]           # Change instance state to destroy. Delete all information for one or more instances
    - kitchen diagnose [INSTANCE|REGEXP|all]          # Show computed diagnostic configuration
    - kitchen driver                                  # Driver subcommands
    - kitchen driver create [NAME]                    # Create a new Kitchen Driver gem project
    - kitchen driver discover                         # Discover Test Kitchen drivers published on RubyGems
    - kitchen driver help [COMMAND]                   # Describe subcommands or one specific subcommand
    - kitchen exec INSTANCE|REGEXP -c REMOTE_COMMAND  # Execute command on one or more instance
    - kitchen help [COMMAND]                          # Describe available commands or one specific command
    - kitchen init                                    # Adds some configuration to your cookbook so Kitchen can rock
    - kitchen list [INSTANCE|REGEXP|all]              # Lists one or more instances
    - kitchen login INSTANCE|REGEXP                   # Log in to one instance
    - kitchen package INSTANCE|REGEXP                 # package an instance
    - kitchen setup [INSTANCE|REGEXP|all]             # Change instance state to setup. Prepare to run automated tests. Install busser and related gems on one or more instances
    - kitchen test [INSTANCE|REGEXP|all]              # Test (destroy, create, converge, setup, verify and destroy) one or more instances
    - kitchen verify [INSTANCE|REGEXP|all]            # Change instance state to verify. Run automated tests on one or more instances
    - kitchen version                                 # Print Kitchen's version information
    sample: kitchen converge
            kitchen list
            kitchen login <host>
            kitchen destroy
    
#### Knife
    ** OPSCODE PRIVATE CHEF ORGANIZATION MANAGEMENT COMMANDS **
    knife opc org create ORG_SHORT_NAME ORG_FULL_NAME (options)
    knife opc org delete ORG_NAME
    knife opc org edit ORG
    knife opc org list
    knife opc org show ORGNAME
    knife opc org user add ORG_NAME USER_NAME
    knife opc org user remove ORG_NAME USER_NAME
    knife opc user create USERNAME FIRST_NAME [MIDDLE_NAME] LAST_NAME EMAIL PASSWORD
    knife opc user delete USERNAME [-d]
    knife opc user edit USERNAME
    knife opc user list
    knife opc user password USERNAME [PASSWORD | --enable-external-auth]
    knife opc user show USERNAME
    
    ** BOOTSTRAP COMMANDS **
    knife bootstrap [SSH_USER@]FQDN (options)
    knife bootstrap windows ssh FQDN (options)
    knife bootstrap windows winrm FQDN (options)
 
    ** CLIENT COMMANDS **
    knife client bulk delete REGEX (options)
    knife client create CLIENTNAME (options)
    knife client delete [CLIENT[,CLIENT]] (options)
    knife client edit CLIENT (options)
    Usage: /usr/local/bin/knife (options)
    knife client key delete CLIENT KEYNAME (options)
    knife client key edit CLIENT KEYNAME (options)
    knife client key list CLIENT (options)
    knife client key show CLIENT KEYNAME (options)
    knife client list (options)
    knife client reregister CLIENT (options)
    knife client show CLIENT (options)
    
    ** CONFIGURE COMMANDS **
    knife configure (options)
    knife configure client DIRECTORY
    
    ** COOKBOOK COMMANDS **
    knife cookbook bulk delete REGEX (options)
    knife cookbook create COOKBOOK (options)
    knife cookbook delete COOKBOOK VERSION (options)
    knife cookbook download COOKBOOK [VERSION] (options)
    knife cookbook list (options)
    knife cookbook metadata COOKBOOK (options)
    knife cookbook metadata from FILE (options)
    knife cookbook show COOKBOOK [VERSION] [PART] [FILENAME] (options)
    knife cookbook test [COOKBOOKS...] (options)
    knife cookbook upload [COOKBOOKS...] (options)
    
    ** COOKBOOK SITE COMMANDS **
    knife cookbook site download COOKBOOK [VERSION] (options)
    knife cookbook site install COOKBOOK [VERSION] (options)
    knife cookbook site list (options)
    knife cookbook site search QUERY (options)
    knife cookbook site share COOKBOOK [CATEGORY] (options)
    knife cookbook site show COOKBOOK [VERSION] (options)
    knife cookbook site unshare COOKBOOK
    
    ** DATA BAG COMMANDS **
    knife data bag create BAG [ITEM] (options)
    knife data bag delete BAG [ITEM] (options)
    knife data bag edit BAG ITEM (options)
    knife data bag from file BAG FILE|FOLDER [FILE|FOLDER..] (options)
    knife data bag list (options)
    knife data bag show BAG [ITEM] (options)
    
    ** DECRYPT COMMANDS **
    knife decrypt VAULT ITEM [VALUES] (options)
    
    ** EC2 COMMANDS **
    knife ec2 amis ubuntu DISTRO [TYPE] (options)
    
    ** ENCRYPT COMMANDS **
    knife encrypt create VAULT ITEM VALUES (options)
    knife encrypt delete VAULT ITEM (options)
    knife encrypt remove VAULT ITEM VALUES (options)
    knife encrypt rotate keys VAULT ITEM (options)
    knife encrypt update VAULT ITEM VALUES (options)
    
    ** ENVIRONMENT COMMANDS **
    knife environment compare [ENVIRONMENT..] (options)
    knife environment create ENVIRONMENT (options)
    knife environment delete ENVIRONMENT (options)
    knife environment edit ENVIRONMENT (options)
    knife environment from file FILE [FILE..] (options)
    knife environment list (options)
    knife environment show ENVIRONMENT (options)
    
    ** EXEC COMMANDS **
    knife exec [SCRIPT] (options)
    
    ** HELP COMMANDS **
    knife help [list|TOPIC]
    
    ** INDEX COMMANDS **
    knife index rebuild (options)
    
    ** JOB COMMANDS **
    knife job list
    knife job output <job id> <node> [<node> ...]
    knife job start <command> [<node> <node> ...]
    knife job status <job id>
    
    ** KNIFE COMMANDS **
    Usage: /usr/local/bin/knife (options)
    
    ** NODE COMMANDS **
    knife node bulk delete REGEX (options)
    knife node create NODE (options)
    knife node delete [NODE[,NODE]] (options)
    knife node edit NODE (options)
    knife node environment set NODE ENVIRONMENT
    knife node from file FILE (options)
    knife node list (options)
    knife node run_list add [NODE] [ENTRY[,ENTRY]] (options)
    knife node run_list remove [NODE] [ENTRY[,ENTRY]] (options)
    knife node run_list set NODE ENTRIES (options)
    knife node show NODE (options)
    knife node status [<node> <node> ...]
    
    ** NULL COMMANDS **
    knife null
    
    ** OSC COMMANDS **
    knife osc_user create USER (options)
    knife osc_user delete USER (options)
    knife osc_user edit USER (options)
    knife osc_user list (options)
    knife osc_user reregister USER (options)
    knife osc_user show USER (options)
    
    ** PATH-BASED COMMANDS **
    knife delete [PATTERN1 ... PATTERNn]
    knife deps PATTERN1 [PATTERNn]
    knife diff PATTERNS
    knife download PATTERNS
    knife edit [PATTERN1 ... PATTERNn]
    knife list [-dfR1p] [PATTERN1 ... PATTERNn]
    knife show [PATTERN1 ... PATTERNn]
    knife upload PATTERNS
    knife xargs [COMMAND]
    
    ** RAW COMMANDS **
    knife raw REQUEST_PATH
    
    ** RECIPE COMMANDS **
    knife recipe list [PATTERN]
    
    ** REHASH COMMANDS **
    knife rehash
    
    ** ROLE COMMANDS **
    knife role bulk delete REGEX (options)
    knife role create ROLE (options)
    knife role delete ROLE (options)
    knife role edit ROLE (options)
    knife role env_run_list add [ROLE] [ENVIRONMENT] [ENTRY[,ENTRY]] (options)
    knife role env_run_list clear [ROLE] [ENVIRONMENT]
    knife role env_run_list remove [ROLE] [ENVIRONMENT] [ENTRIES]
    knife role env_run_list replace [ROLE] [ENVIRONMENT] [OLD_ENTRY] [NEW_ENTRY]
    knife role env_run_list set [ROLE] [ENVIRONMENT] [ENTRIES]
    knife role from file FILE [FILE..] (options)
    knife role list (options)
    knife role run_list add [ROLE] [ENTRY[,ENTRY]] (options)
    knife role run_list clear [ROLE]
    knife role run_list remove [ROLE] [ENTRY]
    knife role run_list replace [ROLE] [OLD_ENTRY] [NEW_ENTRY]
    knife role run_list set [ROLE] [ENTRIES]
    knife role show ROLE (options)
    
    ** SEARCH COMMANDS **
    knife search INDEX QUERY (options)
    
    ** SERVE COMMANDS **
    knife serve (options)
    
    ** SPORK COMMANDS **
    knife spork bump COOKBOOK [major|minor|patch|manual]
    knife spork check COOKBOOK (options)
    knife spork data bag create BAG [ITEM] (options)
    knife spork data bag delete BAG [ITEM] (options)
    knife spork data bag edit BAG ITEM (options)
    knife spork data bag from file BAG FILE|FOLDER [FILE|FOLDER..] (options)
    knife spork delete [COOKBOOKS...] (options)
    knife spork environment check ENVIRONMENT (options)
    knife spork environment create ENVIRONMENT (options)
    knife spork environment delete ENVIRONMENT (options)
    knife spork environment edit ENVIRONMENT (options)
    knife spork environment from file FILENAME (options)
    knife spork info
    knife spork node create NODE (options)
    knife spork node delete NODE (options)
    knife spork node edit NODE (options)
    knife spork node from file FILE (options)
    knife spork node run_list add [NODE] [ENTRY[,ENTRY]] (options)
    knife spork node run_list add [NODE] [ENTRY[,ENTRY]] (options)
    knife spork node run_list set NODE ENTRIES (options)
    knife spork omni COOKBOOK (options)
    knife spork promote ENVIRONMENT COOKBOOK (options)
    knife spork role create ROLE (options)
    knife spork role delete ROLENAME (options)
    knife spork role edit ROLENAME (options)
    knife spork role from file FILENAME (options)
    knife spork upload [COOKBOOKS...] (options)
    
    ** SSH COMMANDS **
    knife ssh QUERY COMMAND (options)
    
    ** SSL COMMANDS **
    knife ssl check [URL] (options)
    knife ssl fetch [URL] (options)
    
    ** STATUS COMMANDS **
    knife status QUERY (options)
    
    ** SUPERMARKET COMMANDS **
    knife supermarket download COOKBOOK [VERSION] (options)
    knife supermarket install COOKBOOK [VERSION] (options)
    knife supermarket list (options)
    knife supermarket search QUERY (options)
    knife supermarket share COOKBOOK [CATEGORY] (options)
    knife supermarket show COOKBOOK [VERSION] (options)
    knife supermarket unshare COOKBOOK (options)
    
    ** TAG COMMANDS **
    knife tag create NODE TAG ...
    knife tag delete NODE TAG ...
    knife tag list NODE
    
    ** USER COMMANDS **
    knife user create USERNAME DISPLAY_NAME FIRST_NAME LAST_NAME EMAIL PASSWORD (options)
    knife user delete USER (options)
    knife user edit USER (options)
    knife user key create USER (options)
    knife user key delete USER KEYNAME (options)
    knife user key edit USER KEYNAME (options)
    knife user key list USER (options)
    knife user key show USER KEYNAME (options)
    knife user list (options)
    knife user reregister USER (options)
    knife user show USER (options)
    
    ** VAULT COMMANDS **
    knife vault create VAULT ITEM VALUES (options)
    knife vault decrypt VAULT ITEM [VALUES] (options)
    knife vault delete VAULT ITEM (options)
    knife vault download VAULT ITEM PATH (options)
    knife vault edit VAULT ITEM (options)
    knife vault isvault VAULT ITEM (options)
    knife vault itemtype VAULT ITEM (options)
    knife vault list (options)
    knife vault refresh VAULT ITEM
    knife vault remove VAULT ITEM VALUES (options)
    knife vault rotate all keys
    knife vault rotate keys VAULT ITEM (options)
    knife vault show VAULT [ITEM] [VALUES] (options)
    knife vault update VAULT ITEM VALUES (options)
    
    ** WINDOWS COMMANDS **
    knife windows cert generate FILE_PATH (options)
    knife windows cert install CERT [CERT] (options)
    knife bootstrap windows winrm FQDN (options)
    knife bootstrap windows ssh FQDN (options)
    knife winrm QUERY COMMAND (options)
    knife wsman test QUERY (options)
    knife windows listener create (options)
    
    ** WINRM COMMANDS **
    knife winrm QUERY COMMAND (options)
    
    ** WSMAN COMMANDS **
    knife wsman test QUERY (options)
    
    ** YAHOO COMMANDS **
    knife yahoo cookbook create COOKBOOK (option)
    
    Example:
    knife bootstrap host1.test.com -N h1 -x <user>  --sudo
    knife node environment set h1 env1
    knife node run_list set h1 "role[role1]"
    knife search 'role:role1'
    
#### Rspec
    Usage: rspec [options] [files or directories]

    -I PATH                          Specify PATH to add to $LOAD_PATH (may be used more than once).
    -r, --require PATH               Require a file.
    -O, --options PATH               Specify the path to a custom options file.
        --order TYPE[:SEED]          Run examples by the specified order type.
                                       [defined] examples and groups are run in the order they are defined
                                       [rand]    randomize the order of groups and examples
                                       [random]  alias for rand
                                       [random:SEED] e.g. --order random:123
        --seed SEED                  Equivalent of --order rand:SEED.
        --bisect[=verbose]           Repeatedly runs the suite in order to isolate the failures to the
                                       smallest reproducible case.
        --[no-]fail-fast[=COUNT]     Abort the run after a certain number of failures (1 by default).
        --failure-exit-code CODE     Override the exit code used when there are failing specs.
    -X, --[no-]drb                   Run examples via DRb.
        --drb-port PORT              Port to connect to the DRb server.

    **** Output ****
    -f, --format FORMATTER           Choose a formatter.
                                       [p]rogress (default - dots)
                                       [d]ocumentation (group and example names)
                                       [h]tml
                                       [j]son
                                       custom formatter class name
    -o, --out FILE                   Write output to a file instead of $stdout. This option applies
                                       to the previously specified --format, or the default format
                                       if no format is specified.
        --deprecation-out FILE       Write deprecation warnings to a file instead of $stderr.
    -b, --backtrace                  Enable full backtrace.
    -c, --[no-]color, --[no-]colour  Enable color in the output.
    -p, --[no-]profile [COUNT]       Enable profiling of examples and list the slowest examples (default: 10).
        --dry-run                    Print the formatter output of your suite without
                                       running any examples or hooks
    -w, --warnings                   Enable ruby warnings

    **** Filtering/tags ****

    In addition to the following options for selecting specific files, groups, or
    examples, you can select individual examples by appending the line number(s) to
    the filename:

      rspec path/to/a_spec.rb:37:87

    You can also pass example ids enclosed in square brackets:

      rspec path/to/a_spec.rb[1:5,1:6] # run the 5th and 6th examples/groups defined in the 1st group

        --only-failures              Filter to just the examples that failed the last time they ran.
        --next-failure               Apply `--only-failures` and abort after one failure.
                                       (Equivalent to `--only-failures --fail-fast --order defined`)
    -P, --pattern PATTERN            Load files matching pattern (default: "spec/**/*_spec.rb").
        --exclude-pattern PATTERN    Load files except those matching pattern. Opposite effect of --pattern.
    -e, --example STRING             Run examples whose full nested names include STRING (may be
                                       used more than once)
    -t, --tag TAG[:VALUE]            Run examples with the specified tag, or exclude examples
                                     by adding ~ before the tag.
                                       - e.g. ~slow
                                       - TAG is always converted to a symbol
        --default-path PATH          Set the default path where RSpec looks for examples (can
                                       be a path to a file or a directory).
    **** Utility ****
        --init                       Initialize your project with RSpec.
    -v, --version                    Display the version.
    -h, --help                       You're looking at it.
    Example: chef exec rspec 
