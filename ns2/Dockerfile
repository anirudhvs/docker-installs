FROM ubuntu:18.04

RUN apt-get update -y

RUN apt-get install -y build-essential autoconf automake libxmu-dev curl wget gcc-4.8 g++-4.8

COPY . .

RUN wget http://downloads.sourceforge.net/project/nsnam/allinone/ns-allinone-2.35/ns-allinone-2.35.tar.gz

RUN tar xzf ns-allinone-2.35.tar.gz

RUN chmod +x install.sh && bash install.sh

ENV PATH $PATH:/ns-allinone-2.35/bin:/ns-allinone-2.35/tcl8.5.10/unix:/ns-allinone-2.35/tk8.5.10/unix

ENV LD_LIBRARY_PATH /ns-allinone-2.35/otcl-1.14:/ns-allinone-2.35/lib

ENV TCL_LIBRARY /ns-allinone-2.35/tcl8.5.10/library