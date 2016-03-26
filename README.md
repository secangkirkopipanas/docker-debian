# Debian Docker Image

Maintainer: [Robertus Lilik Haryanto]

This image is updated via pull requests to the `secangkirkopipanas/docker-debian` [GitHub repo]. It is a Debian image with additional software such as `Oracle JDK 8/7/6`, `nano`, `wget`, `zip`, and `telnet` with additional mirror sites of [Singapore][mirror.0x.sg] and [Indonesia][kambing.ui.ac.id].

## Supported tags for Oracle JDK
- `latest.oracle-jdk8` [(master/Dockerfile)]
- `jessie.oracle-jdk8` [(jessie.oracle-jdk8/Dockerfile)]
- `jessie.oracle-jdk7` [(jessie.oracle-jdk7/Dockerfile)]
- `jessie.oracle-jdk6` [(jessie.oracle-jdk6/Dockerfile)]

## Supported tags for OpenJDK
- `latest.openjdk8` [(latest.openjdk8/Dockerfile)]
- `jessie.openjdk8` [(jessie.openjdk8/Dockerfile)]
- `jessie.openjdk7` [(jessie.openjdk7/Dockerfile)]

## Supported tags for Apache Tomcat 8 with OpenJDK 8
- `latest.openjdk8.tomcat8` [`coming soon`]
- `jessie.openjdk8.tomcat8` [`coming soon`]

## Supported tags for RedHat Wildfly 10 with OpenJDK 8
- `latest.openjdk8.wildfly10` [`coming soon`]
- `jessie.openjdk8.wildfly10` [`coming soon`]

## What is Debian?
Debian is an operating system which is composed primarily of free and open-source software, most of which is under the GNU General Public License, and developed by a group of individuals known as the Debian project. Debian is one of the most popular Linux distributions for personal computers and network servers, and has been used as a base for several other Linux distributions.

[wikipedia.org/wiki/Debian]

## Supported Docker versions
This image is officially supported on Docker version 1.10.3.

Support for older versions (down to 1.6) is provided on a best-effort basis.

Please see the [Docker installation documentation] for details on how to upgrade your Docker daemon.


   [Robertus Lilik Haryanto]: <mailto:robert.djokdja@gmail.com>
   [GitHub repo]: <https://github.com/secangkirkopipanas/docker-debian>
   [mirror.0x.sg]: <http://mirror.0x.sg/debian>
   [kambing.ui.ac.id]: <http://kambing.ui.ac.id/debian>
   [wikipedia.org/wiki/Debian]: <https://en.wikipedia.org/wiki/Debian>
   [Docker installation documentation]: <https://docs.docker.com/installation/>
   [(master/Dockerfile)]: <https://github.com/secangkirkopipanas/docker-debian/blob/master/Dockerfile>
   [(jessie.oracle-jdk8/Dockerfile)]: <https://github.com/secangkirkopipanas/docker-debian/blob/jessie.oracle-jdk8/Dockerfile>
   [(jessie.oracle-jdk7/Dockerfile)]: <https://github.com/secangkirkopipanas/docker-debian/blob/jessie.oracle-jdk7/Dockerfile>
   [(jessie.oracle-jdk6/Dockerfile)]: <https://github.com/secangkirkopipanas/docker-debian/blob/jessie.oracle-jdk6/Dockerfile>
   [(latest.openjdk8/Dockerfile)]: <https://github.com/secangkirkopipanas/docker-debian/blob/latest.openjdk8/Dockerfile>
   [(jessie.openjdk8/Dockerfile)]: <https://github.com/secangkirkopipanas/docker-debian/blob/jessie.openjdk8/Dockerfile>
   [(jessie.openjdk7/Dockerfile)]: <https://github.com/secangkirkopipanas/docker-debian/blob/jessie.openjdk7/Dockerfile>
