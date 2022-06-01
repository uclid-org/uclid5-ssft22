## Docker Image for UCLID5 

---

The docker image mounts a folder containing the following directories and files:
- artefact/Readme.txt - this readme
- artefact/bin - precompiled binaries for UCLID5, Z3, CVC4, CVC5 and delphi. The docker image automatically adds this to the path.
- artefact/examples - scripts to run all of the examples in the tool paper
- artefact/uclid - the source code for UCLID5

---

### Source code:

The `UCLID5` tool is publicly available at https://github.com/uclid-org/uclid/tree/master. This repository includes the source code as well as a comprehensive set of tests.


### Compiling UCLID5 from source:

(Optional) Building `UCLID5` from source (needs an internet connection to install sbt):
   - enter the uclid directory
   - Follow the instructions in Readme.md
