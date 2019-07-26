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

# find -name = core
#usually results in so many “permission denied” error messages that genuine hits
#get lost in the clutter. To discard all the error messages, you can use
find / -name core
find / -name core 2> /dev/null
#This command line sends matching paths to /tmp/corefiles, discards errors, and
#sends nothing to the terminal window
find / -name core > /tmp/corefiles 2> /dev/null #

#The first example runs ps to generate a list of processes and pipes it through the
#grep command to select lines that contain the word httpd. The output of grep is
#not redirected, so the matching lines come to the terminal window

ps -ef | grep httpd 

#The cut command in the second example picks out the path to each user’s shell
#from /etc/passwd. The list of shells is then sent through sort -u to produce a
#sorted list of unique values.
cut -d: -f7 < /etc/passwd | sort -u

#To execute a second command only if its precursor completes successfully, you
#can separate the commands with an && symbol. For example
 lpr /tmp/t2 && rm /tmp/t2
 
 #In a script, you can use a backslash to break a command onto multiple lines, helping to distinguish the error-handling code from the rest of the command pipeline:
cp --preserve --recursive /etc/* /spare/backup \
|| echo "Did NOT make backup"

#Variables and quoting
 etcdir='/etc'
 echo $etcdir 
 echo "Saved ${rev}th version of mdadm.conf." 
 
 #The commands below illustrate the difference between numeric and dictionary
#sorting, which is the default. Both commands use the -t: and -k3,3 options to sort
#the /etc/group file by its third colon-separated field, the group ID. The first sorts
#numerically and the second alphabetically.
sort -t: -k3,3 -n /etc/group

uniq: print unique lines
uniq is similar in spirit to sort -u, but it has some useful options that sort does not
emulate: -c to count the number of instances of each line, -d to show only duplicated lines, and -u to show only nonduplicated lines. The input must be presorted,
usually by being run through sort.
For example, the command below shows that 20 users have /bin/bash as their
login shell and that 12 have /bin/false. (The latter are either pseudo-users or users
whose accounts have been disabled.)

cut: separate lines into fields
The cut command prints selected portions of its input lines. It’s most commonly
used to extract delimited fields, as in the example on page 32, but it can return
segments defined by column boundaries as well. The default delimiter is <Tab>,
but you can change delimiters with the -d option. The -f options specifies which
fields to include in the output.
For an example of the use of cut, see the section on uniq, below.
sort: sort lines
sort sorts its input lines. Simple, right? Well, maybe not—there are a few potential
subtleties regarding the exact parts of each line that are sorted (the “keys”) and the
collation order to be imposed. Table 2.1 shows a few of the more common options, but check the man page for others.

cut -d: -f7 /etc/passwd | sort | uniq -c

