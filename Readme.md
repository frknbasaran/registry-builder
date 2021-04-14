# Docker Registry Builder

This shell script allows building your own docker registry easily. I created and tested it on the initial Ubuntu 18.04 setup. (on digital ocean)

##  Instructions

 1. Create your own fork from this repository and replace the "domain.com" string with "yourowndomain.com". 
 2. Rename domain.com file as "yourowndomain.com".
 3. Get a clone from your fork on your initial server. (recommended os Ubuntu 18.04)
 4. Set shell script permission. `chmod +x registry-builder.sh`
 5. Run the script with the registry username as the first argument. 
  `./registry-builder.sh registryAdmin`
 6. Script may cause prompts during the process.
 
