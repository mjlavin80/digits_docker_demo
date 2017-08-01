# Docker demo for Digits Advisory Board meeting

This demo is designed to use Docker to build, first, a simple Hello world! static site, then a static site that uses 
the bootstrap3 framework, and then finally, a python-for-the-web application that connects to an empty sqlite3 database.

# Dependencies

Must have Docker installed

# Best order to run bash scripts

source clear_for_demo.sh
source static_demo.sh
source clear_for_demo.sh
source bootstrap_demo.sh
source clear_for_demo.sh
source flask_demo.sh
source clear_for_demo.sh

# What the scripts do 

Each script is a little different but, basically, a given .sh file will setup folders, create or download static file dependencies, 
build Docker image from Dockerfile, and run the Docker container mapped to the VM's port 80. If something else is mapped to port 80,
 the script will fail. "source static_demo.sh" therefore does upkeep tasks such as stopping and removing older containers. 
The script also remove downloaded images to provide an accurate sense of how long it takes to do each build "from scratch." 
If one were to remove this command, performance would only increase.
