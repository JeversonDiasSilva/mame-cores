#!/bin/bash
# Curitiba 08 de Fevereiro de 2025
# Editor Jeverson Dias da Silva........Youtube/@JCGAMESCLASSICOS

mkdir -p ?
cd ?
curl  OS_v1.0
unsquashfs -d cores OS_v1.0
rm OS_v1.0
ln -s "$(pwd)"/cores/* /usr/libs/libretro

# 

if [ -f "/userdata/system/configs/emulationstation/es_systema.cfg" ]; then

sed -i '/<system>/ {
    :start
    N
    /<\/system>/! b start
    /<name>mame<\/name>/ {
        i\
        
        i<!--
        s/^/<!-- /;
        s/$/ -->/;
        a-->
        a\
        
    }
}' /home/live/Desktop/es_systems.cfg

else

fi



#




batocera-save-overlay

