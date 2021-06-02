An Sample Laravel 8 webapp using React as front end and Docker with  a few dependencies 

Prerequisites
-----

Docker with WSL 2 engine

See the [Docker website](http://www.docker.io/gettingstarted/#h_installation) for installation instructions.

Build
-----

Steps to build a Docker image:

1. Clone this repo

        git clone https://github.com/I-Alpha/SampleLaravelReactApp.git

2. Build the image and Deploy

        cd SampleLaravelReactApp/
        docker compose up 

      or 

      * run  sailDockerQuickstart.bat
      
      or
      
      * run  sailDockerQuickstart.sh 
       
    This will take a few minutes.


3.  Run migrate.bat to perform database migrations. 
        Optional argument : seed  (seed databse with example data) 

6. Once everything has started up, you should be able to access the webapp via [http://localhost:80/](http://localhost:80/) on your host machine.

        open http://localhost:80/

You can also login to the image and have a look around:

    docker run -i -t my-app /bin/bash


### You can find a list of usefull docker commands [here](https://gist.github.com/garystafford/f0bd5f696399d4d7df0f)