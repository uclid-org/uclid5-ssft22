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

The presaved docker image is available here:

https://uoe-my.sharepoint.com/:u:/g/personal/epolgree_ed_ac_uk/Ec9vt-RHSOdKguEcp7FQ4-kB9FVXznop9MKwwDTArobbmg?e=prHgoo


If your image is split into several tarballs, first combine them. For example:
~~~
cat uclid_image.tar.gza* >uclid_image.tar.gz
~~~

Now load the image from the combined tarball (note that a sudo is required on WSL2).
~~~
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


## Other notes:

1. From WSL2, you need to provide sudo permission for any docker related command:
~~~
sudo docker <command>
~~~


