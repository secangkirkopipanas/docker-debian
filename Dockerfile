FROM debian:jessie
MAINTAINER Robertus Lilik Haryanto <robert.djokdja@gmail.com>

# Add webupd8 repository
RUN \
    echo "### Add 0x mirror (Singapore)" && \
    echo "deb http://mirror.0x.sg/debian/ jessie main" | tee /etc/apt/sources.list.d/0x-mirror.list && \
    echo "deb-src http://mirror.0x.sg/debian/ jessie main" | tee -a /etc/apt/sources.list.d/0x-mirror.list && \
    echo "deb http://kambing.ui.ac.id/debian/ jessie main" | tee /etc/apt/sources.list.d/kambing.ui.ac.id.list && \
    echo "deb-src http://kambing.ui.ac.id/debian/ jessie main" | tee -a /etc/apt/sources.list.d/kambing.ui.ac.id.list && \
    echo "deb http://kambing.ui.ac.id/debian/ jessie-backports main" | tee /etc/apt/sources.list.d/kambing.ui.ac.id.jessie-backports.list
	
RUN \
    echo "### Install OpenJDK 7" && \
    apt-get update && apt-get install -y openjdk-7-jdk
	
RUN \
    echo "### Install few applications"  && \
    apt-get install -y nano wget zip telnet
	
RUN \
    echo "### Clean up..."  && \
    rm -rf /var/cache/openjdk-7-jdk  && \
    apt-get clean  && \
    rm -rf /var/lib/apt/lists/*
	
ENV JAVA_HOME /usr/lib/jvm/java-7-openjdk-amd64/
ENV PATH $PATH:$JAVA_HOME/bin
ENV TZ Asia/Singapore

# Define default command
CMD ["/bin/bash"]
