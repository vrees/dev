#!/bin/bash

# Bilderverzeichnis
IMGDIR='/home/pi/webcam'

# Zeitstempel fuer Dateinamen generieren,
# %s: Sekunden seit 1970-01-01 00:00:00 UTC
TIME=$(date +%Y%m%d%H%M%S)
DISPLAY_TIME=$(date "+%Y-%m-%d_%H:%M:%S")

YEAR=${TIME:0:4}
MONTH=${TIME:4:2}
DAY=${TIME:6:2}
HOUR=${TIME:8:2}

# echo $YEAR/$MONTH/$DAY/$HOUR

# Dateinamen erzeugen
FILENAME=$IMGDIR/r${TIME}.jpg
CURRENT_FILE=current.jpg
echo Dateiname: $FILENAME
echo Datum: $DISPLAY_TIME

# Foto erstellen,  die Parameter -w und -h
# reduzieren die Dateigroesse
raspistill -vf -hf -o $CURRENT_FILE -w 1024 -h 768 -n

convert -pointsize 30 -draw 'text 20,35 "'$DISPLAY_TIME'"' $CURRENT_FILE $FILENAME

# Bild auf den FTP-Server uebertragen
wput -B $FILENAME ftp://webcam_notschrei:notschrei16@server.sis-projekt.de/mx10-8-71-231/raspi-cam/schiessstand1.jpg
wput -B $FILENAME ftp://webcam_notschrei:notschrei16@server.sis-projekt.de/mx10-8-71-231/raspi-cam/$YEAR/$MONTH/$DAY/$HOUR/r${TIME}.jpg

# loesche Bilder, die aelter als 14 Tage sind
find $IMGDIR/* -mtime +14 -type f -delete
