#!/bin/bash
# GNU bash, version 4.3.46

#Check os version in Linux
cat /etc/os-release
lsb_release -a
hostnamectl
#linux kernel version
uname -r
#Another option is to type the following command:

cat /proc/version
#You can also view the manual page on uname using the following command:
 man hostnamectl
 man uname
 man cat
 
#Install software

#Ubuntu
apt-get install wget 
#The SUSE
yast --install wget 
#Red hat version
yum install wget 
#On a Solaris system
 /opt/csw/bin/pkgutil --install wget 
#For HP-UX
 swinstall -s /tmp/wget-1.11.4-hppa-11.31.depot wget 
 
 wget http://samba.org/samba/docs/Samba3-HOWTO.pdf 
 
#Building software from source code
aix# rpm --install wget-1.11.4-1.aix5.1.ppc.rpm
aix# cd /tmp; gunzip wget-1.11.4.tar.gz
aix# tar xfp wget-1.11.4.tar
aix# cd wget-1.11.4
aix# ./configure --disable-ssl --disable-nls 
