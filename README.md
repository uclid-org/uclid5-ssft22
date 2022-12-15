# UCLID5 artifact

## VSCode Integration Instructions For Mac

1. [Install Docker Desktop 2.0+](https://www.docker.com/).
1. [Install the Remote Development extension pack in VSCode](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.vscode-remote-extensionpack).
1. Close VSCode.
1. [Download the UCLID5 docker image](https://uoe-my.sharepoint.com/:u:/g/personal/epolgree_ed_ac_uk/Ec9vt-RHSOdKguEcp7FQ4-kB9FVXznop9MKwwDTArobbmg?e=ywpe5S).
1. Open a terminal.
1. In the terminal, start docker: `open -a Docker`.
1. In the terminal, load the UCLID5 docker image: `docker load -i uclid_image.tar.gz`.
1. Open this folder (the folder containing this README) in VSCode.
1. You should be prompted to "Reopen in Container". Do this.
1. If you are not prompted, run the VSCode command (cmd+shift+p) `Dev Containers: Open Folder in Container...` and select this folder.
1. Once that is done, your VSCode terminal prompt should be something like `root@109b4b361c47:/workspaces/uclid5-ssft22# `.
1. Test that everything works by running `uclid uclid_artefact/examples/Inv/inv1.ucl`. You should see
```
Successfully instantiated 1 module(s).
1 assertions passed.
1 assertions failed.
0 assertions indeterminate.
  PASSED -> vobj: induction_base [Step #0] property y_ge_1 @ uclid_artefact/examples/Inv/inv1.ucl, line 24
  FAILED -> vobj: induction_step [Step #1] property y_ge_1 @ uclid_artefact/examples/Inv/inv1.ucl, line 24
CEX for vobj: induction_step [Step #1] property y_ge_1 @ uclid_artefact/examples/Inv/inv1.ucl, line 24
=================================
Step #0
  x : -1
  y : 1
=================================
=================================
Step #1
  x : 0
  y : 0
=================================
Finished execution for module: main.
```

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

https://uoe-my.sharepoint.com/:u:/g/personal/epolgree_ed_ac_uk/Ec9vt-RHSOdKguEcp7FQ4-kB9FVXznop9MKwwDTArobbmg?e=ywpe5S


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



## Other notes:

1. From WSL2, you need to provide sudo permission for any docker related command:
~~~
sudo docker <command>
~~~


