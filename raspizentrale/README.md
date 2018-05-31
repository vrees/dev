
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
´´´
Passwort eingeben und Hash in config eintragen:

´´´
vi ~/.node-red/settings.js
´´´

