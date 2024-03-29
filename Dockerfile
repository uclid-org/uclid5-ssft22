FROM ubuntu:20.04

ENV TZ=Asia/Dubai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt update
RUN apt install -y tzdata

RUN apt-get update

RUN apt-get --fix-missing -y install \
        sudo time default-jdk \
        g++ gcc flex bison make git curl patch cmake vim emacs

ADD uclid.tar.gz /

VOLUME /uclid_artefact

ENV PATH="/uclid_artefact/bin:/uclid_artefact/uclid-0.9.5/bin:/uclid_artefact/bin/z3-bin:${PATH}"
ENV LD_LIBRARY_PATH="/uclid_artefact/bin/z3-bin:${LD_LIBRARY_PATH}"
WORKDIR uclid_artefact
