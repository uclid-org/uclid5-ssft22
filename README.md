# UCLID5 artifact


## Instructions for setup with docker

### Starting Docker
On Unix/Linux, start docker with:

~~~
sudo service docker start
~~~

On OSX/Mac, start docker with:

~~~
open -a Docker
~~~

### From the Dockerfile
To create the docker image from the Dockerfile:

~~~
sudo service docker start 
tar -czvf uclid.tar.gz uclid_artefact
sudo docker build -t uclid_image -f Dockerfile .
sudo docker run -i -t uclid_image /bin/bash
~~~

You are then inside the docker container. 

Note that the first command in the above sequence is not needed if you are running Docker on Windows/WSL2.
In that case, you will need to start Docker Desktop directly from Windows, and make sure you have followed
the instructions here: https://docs.docker.com/desktop/windows/wsl/

### Using the pre-saved docker image

~~~
cat uclid_image.tar.gza* >uclid_image.tar.gz
docker load -i uclid_image.tar.gz
docker run -i -t uclid_image /bin/bash
~~~


## Inside the docker container

The docker image mounts a folder containing the following directories and files:
- uclid_artefact/Readme.txt - information in this readme
- uclid_artefact/bin - precompiled binaries for UCLID5, Z3, CVC4, CVC5, and
delphi. The docker image automatically adds this to the path.
- uclid_artefact/examples - examples to run UCLID5 on
- uclid_artefact/uclid - the source code for UCLID5

