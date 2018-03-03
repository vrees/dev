pi@raspigo:~ $ cat webcam/bin/camera-send-image.sh
#!/bin/bash

# Bilderverzeichnis
IMGDIR='/home/pi/webcam'

# Zeitstempel fuer Dateinamen generieren,
# %s: Sekunden seit 1970-01-01 00:00:00 UTC
TIME=$(date +%Y%m%d%H%M%S)
IMAGE_FILE=schiessstand1.jpg
#IMAGE_FILE=dummy.jpg
FTP_PATH=ftp://webcam_notschrei:notschrei16@server.sis-projekt.de/mx10-8-71-231/raspi-cam

YEAR=${TIME:0:4}
MONTH=${TIME:4:2}
DAY=${TIME:6:2}
HOUR=${TIME:8:2}

# echo $YEAR/$MONTH/$DAY/$HOUR

# Dateinamen erzeugen
FILENAME=$IMGDIR/r${TIME}.jpg

# Foto erstellen,  die Parameter -w und -h
# reduzieren die Dateigroesse
raspistill -o $FILENAME -w 1024 -h 768 -n -rot 180

# Bild auf den FTP-Server uebertragen
wput -B $FILENAME $FTP_PATH/$YEAR/$MONTH/$DAY/$HOUR/r${TIME}.jpg
wput -B $FILENAME $FTP_PATH/$IMAGE_FILE
