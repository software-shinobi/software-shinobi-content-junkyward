
#set -ex;

reset;clear;
sleep 3

sudo apt-get update; sudo apt-get upgrade -y;
sudo apt-get install docker vim docker.io python -y;




#######################################
###
### Collection of variables for use inside the script
###
#######################################
OVPN_DATA="ovpn-data-example"
EXTERNAL_IP=`curl -s http://whatismyip.akamai.com/`
CLIENT_NAME="openvpn-server"


echo “MY IP is: “$EXTERNAL_IP
echo "CLIENT_NAME: "$CLIENT_NAME
echo "disk name: "$OVPN_DATA

echo
echo

#do some initial cleanup

#docker stop $(docker ps -aq) || exit 0


rm -rf /etc/openvpn/

docker volume create --name $OVPN_DATA

docker run -v $OVPN_DATA:/etc/openvpn --log-driver=none --rm kylemanna/openvpn ovpn_genconfig -u udp://$EXTERNAL_IP
docker run -v $OVPN_DATA:/etc/openvpn --log-driver=none --rm -it kylemanna/openvpn ovpn_initpki

docker run -v $OVPN_DATA:/etc/openvpn -d -p 1194:1194/udp --cap-add=NET_ADMIN kylemanna/openvpn

docker run -v $OVPN_DATA:/etc/openvpn --log-driver=none --rm -it kylemanna/openvpn easyrsa build-client-full $CLIENT_NAME nopass
docker run -v $OVPN_DATA:/etc/openvpn --log-driver=none --rm kylemanna/openvpn ovpn_getclient $CLIENT_NAME > $CLIENT_NAME.ovpn



# echo
# echo "docker before:"
# docker ps
# echo

#docker stop $(docker ps -aq) || exit 0

echo
echo "docker after:"
docker ps
echo


sudo apt-get install apache2 -y

APACHE_DIR="/var/www/html/openvpn/"
rm -rf $APACHE_DIR
mkdir -p $APACHE_DIR
chmod 775 -R $APACHE_DIR
chown -R www-data: $APACHE_DIR

cp *.ovpn $APACHE_DIR
ls -lha $APACHE_DIR

touch test-test

### Install firewall and configure
sudo apt-get install ufw -y
sudo ufw allow 1194/udp
#sudo ufw allow OpenSSH
sudo ufw disable
sudo ufw --force enable
sudo ufs status verbose
