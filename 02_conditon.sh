#!/bin/bash
# GNU bash, version 4.3.46

if ping google.com; then
  echo "working well with internet"
fi
if ping -c 1 google.com; then
 echo "Internet connection ok"
fi
 



if [$(whoami) != 'root']; then
   echo "Must be root to run"
fi

if[-z $1]; then
  echo "Usage: $0 </path/to/httpd.conf>"
  exit 1
fi

httpd_conf_new=$1
httpd_con_path="/usr/local/apache/conf"
login=htuser

farm_hosts=(web03 web04 web05 web06 web07)

for i in ${farm_hosts[@]}; do
  su $login -c "scp $httpd_conf_new ${i}:${httpd_conf_path}"
  su $login -c "scp  sudo /usr/local/apache/bin/apachectl graceful"
done
exit 0
