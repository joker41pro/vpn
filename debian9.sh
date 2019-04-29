#Requirement
if [ ! -e /usr/bin/curl ]; then
    apt-get -y update && apt-get -y upgrade
	apt-get -y install curl
fi

# initializing var
export DEBIAN_FRONTEND=noninteractive
OS=`uname -m`;
MYIP=$(curl -4 icanhazip.com)
if [ $MYIP = "" ]; then
   MYIP=`ifconfig | grep 'inet addr:' | grep -v inet6 | grep -vE '127\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' | cut -d: -f2 | awk '{ print $1}' | head -1`;
fi
MYIP2="s/xxxxxxxxx/$MYIP/g";
apt-get -y remove apt-listchanges


echo "   - MYIP : $MYIP"
echo "   - MYIP2 : $MYIP2"
echo "   - OS : $OS"