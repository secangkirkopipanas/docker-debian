FROM debian:jessie
MAINTAINER Robertus Lilik Haryanto <robert.djokdja@gmail.com>

ENV TZ Asia/Singapore

# Add webupd8 repository
RUN \
	echo "### Add 0x mirror (Singapore)" && \
	echo "deb http://mirror.0x.sg/debian/ jessie main" | tee /etc/apt/sources.list.d/0x-mirror.list && \
    echo "deb-src http://mirror.0x.sg/debian/ jessie main" | tee -a /etc/apt/sources.list.d/0x-mirror.list  && \
	\
	\
    echo "### Add webupd8 repository..."  && \
    echo "deb http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main" | tee /etc/apt/sources.list.d/webupd8team-java.list && \
    echo "deb-src http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main" | tee -a /etc/apt/sources.list.d/webupd8team-java.list && \
    apt-key adv --keyserver keyserver.ubuntu.com --recv-keys EEA14886 && \
    apt-get update
	
RUN \
	echo "### Install Oracle Java 6" && \
    echo debconf shared/accepted-oracle-license-v1-1 select true | debconf-set-selections && \
    echo debconf shared/accepted-oracle-license-v1-1 seen true | debconf-set-selections && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y --force-yes oracle-java6-installer oracle-java6-set-default
	
RUN \
	echo "### Install few applications"  && \
	apt-get install -y nano wget zip
	
RUN \
    echo "### Clean up..."  && \
    rm -rf /var/cache/oracle-jdk8-installer  && \
    apt-get clean  && \
    rm -rf /var/lib/apt/lists/*

# Define default command
CMD ["/bin/bash"]
