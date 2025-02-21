# v0.1.0
This initial release includes:
    - Main script that creates/updates dns records
    - Two docker compose files for running once/as a service
    - Script to generate env config variables for compose files
    - Github workflow to publish docker containers

# v0.1.1
* Add initial README

# v0.1.2
* Fix Docker workflow

# v0.2.0
* Add workflow for publishing scripts to github pages

# v0.2.1
* Fix github pages workflow

# v0.2.2
* Fix github pages warkflow (fr this time)

# v0.3.0
* Add install script

# v0.4.0
* Rename log directory to match the new name of the repo

# v0.5.0
* Add IPv4/IPv6 only modes
    - Main script now takes flags for said modes
    - Docker entrypoint now passes arguments through
    - Service timeout is now passed as an environment variable
    - Install script will now prompt for which mode to use

# v0.5.1
* Fix error generating config in new install script

# v0.6.0
* Add container name argument to install script

# v0.6.1
* Add proper README

# v0.6.2
* Fix help screen in main script
* Fix typo in README

# v0.7.0
* Enable building arm images

# v1.0.0
* Document compose examples
* Reword sentence README
* Reword install script prompt

# v1.0.1
* Add extra feature bullet point in README
