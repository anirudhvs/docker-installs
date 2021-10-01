FROM ubuntu:18.04

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update -y && \ 
    apt-get install -y libgtk2.0-0 curl wget tclsh ns2 nam

RUN wget https://www.xgraph.org/linux/xgraph_4.38_linux64.tar.gz

RUN mkdir -p /opt/xgraph

RUN tar -xvf xgraph_4.38_linux64.tar.gz -C /opt/xgraph

RUN ln -s /opt/xgraph/XGraph4.38_linux64/bin/xgraph /usr/bin/
