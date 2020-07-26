# Docker Registry Builder

This shell script allows build your own docker registry easily. I created and tested it on initial Ubuntu 18.04 setup. (on digitalocean)

##  Instructions

 1. Create your own fork from this repository and replace "domain.com" string with your own domain. 
 2. Get clone from your fork on your initial server. (recommended os Ubuntu 18.04)
 3. Set shell script permission. `chmod +x registry-builder.sh`
 4. Run script with registry username as first argument. 
  `./registry-builder.sh registryAdmin`
 5. Script may cause prompts during process.
 