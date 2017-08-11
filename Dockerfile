FROM ubuntu:16.04 
MAINTAINER Dan Kuida < dan@kuida.org > 
ENV REFRESHED_AT 2017-08-10 
RUN apt-get -yqq update
RUN apt-get -y install software-properties-common
RUN add-apt-repository -y ppa:webupd8team/java
RUN apt-get update
RUN echo debconf shared/accepted-oracle-license-v1-1 select true | debconf-set-selections
RUN echo debconf shared/accepted-oracle-license-v1-1 seen true | debconf-set-selections
RUN apt-get -y install oracle-java8-installer

ENV JAVA_HOME /usr/lib/jvm/java-8-oracle/jre
