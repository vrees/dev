
# Home Automation mit Raspi, NodeRed, MQTT, 


# Raspbian Stretch installieren


## NodeRed

Für NodeRed gibt es ein vorinstalliertes Installationsscript:
´´´
update-nodejs-and-nodered
cd ~/.node-red
sudo npm install node-red-admin 
´´´

´´´
node-red-admin hash-pw

# Passwort eingeben und Hash in config eintragen:
vi ~/.node-red/settings.js
´´´

´´´
sudo systemctl enable nodered.service
sudo service nodered restart
´´´

wget http://www.jensd.de/apps/mqttfx/1.7.0/mqttfx-1.7.0-64bit.deb


## Mosquitto
´´´
wget http://repo.mosquitto.org/debian/mosquitto-repo.gpg.key
sudo apt-key add mosquitto-repo.gpg.key
cd /etc/apt/sources.list.d/
sudo wget http://repo.mosquitto.org/debian/mosquitto-stretch.list
sudo apt-get update
sudo apt-get install mosquitto mosquitto-clients

sudo service mosquitto start
´´´


