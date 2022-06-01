# UCLID5 artifact setup


## Instructions for setup with docker

### Using the pre-saved docker image

~~~
docker load -i uclid_image.tar.gz
docker run -i -t uclid_image /bin/bash
~~~


## Inside the docker container

The docker image mounts a folder containing the following directories and files:
- uclid_artefact/Readme.txt - a readme with instructions on how to run UCLID5 on the provided examples
- uclid_artefact/bin - precompiled binaries for UCLID5, Z3, CVC4, CVC5, and
delphi. The docker image automatically adds this to the path.
- uclid_artefact/examples - example UCLID5 models 
- uclid_artefact/uclid - the source code for UCLID5

