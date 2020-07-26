# Docker Registry Builder

This shell script allows build your own docker registry easily. I created and tested it on initial Ubuntu 18.04 setup. (on digitalocean)

##  Instructions

 1. Create your own fork from this repository and replace "domain.com" string with "yourowndomain.com". 
 2. Rename domain.com file as "yourowndomain.com".
 3. Get clone from your fork on your initial server. (recommended os Ubuntu 18.04)
 4. Set shell script permission. `chmod +x registry-builder.sh`
 5. Run script with registry username as first argument. 
  `./registry-builder.sh registryAdmin`
 6. Script may cause prompts during process.
 