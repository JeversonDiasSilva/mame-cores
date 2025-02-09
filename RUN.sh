#!/bin/bash
# Curitiba 08 de Fevereiro de 2025
# Editor Jeverson Dias da Silva........Youtube/@JCGAMESCLASSICOS
###


clear
# Caminho do arquivo onde a versão está localizada
file_path="/userdata/system/data.version"

# Verifica se o arquivo existe
if [ ! -f "$file_path" ]; then
    echo "Arquivo não encontrado!"
    exit 1
fi

# Lê o conteúdo do arquivo
line=$(cat "$file_path")

# Extrai o primeiro número de dois dígitos
version=$(echo "$line" | grep -oP '\b\d{2}\b' | head -n 1)

# Verifica se a versão foi encontrada
if [ -n "$version" ]; then
    echo ""
    echo -e "\033[1;32mAGUARDE, DETECTANDO A VERSÃO DO SISTEMA...\033[0m"
    sleep 0.5
    clear
    sleep 0.5
    echo ""
    echo -e "\033[1;32mAGUARDE, DETECTANDO A VERSÃO DO SISTEMA...\033[0m"
    sleep 0.5
    clear
    sleep 0.5
    echo ""
    echo -e "\033[1;32mAGUARDE, DETECTANDO A VERSÃO DO SISTEMA...\033[0m"
    sleep 0.5
    clear
    sleep 0.5
    echo ""
    echo -e "\033[1;32mAGUARDE, DETECTANDO A VERSÃO DO SISTEMA...\033[0m"
    sleep 0.5
    clear
    sleep 0.5
    echo ""
    echo -e "\033[1;32mAGUARDE, DETECTANDO A VERSÃO DO SISTEMA...\033[0m"
    sleep 0.5
    clear
    sleep 1
    echo -e "\033[1;32mVERSÃO DETECTADA : Batocera.Linux v$version\033[0m" # em verde negrito
    sleep 3
    echo -e "\033[1;33mINSTALANDO !!!\033[0m" # em verde negrito



###
# Verifica se o arquivo es_systems.cfg existe
if [ -f "/userdata/system/configs/emulationstation/es_systems.cfg" ]; then
    # Modifica o arquivo /userdata/system/configs/emulationstation/es_systems.cfg
    sed -i '/<system>/ {
        :start
        N
        /<\/system>/! b start
        /<name>mame<\/name>/ {
            i\
            <!--
            s/^/<!-- /;
            s/$/ -->/;
            a-->
        }
    }' /userdata/system/configs/emulationstation/es_systems.cfg

    # Modifica o arquivo /usr/share/emulationstation/es_systems.cfg
    sed -i '/<system>/ {
        :start
        N
        /<\/system>/! b start
        /<name>mame<\/name>/ {
            i\
            <!--
            s/^/<!-- /;
            s/$/ -->/;
            a-->
        }
    }' /usr/share/emulationstation/es_systems.cfg
else
    # Modifica o arquivo /usr/share/emulationstation/es_systems.cfg
    sed -i '/<system>/ {
        :start
        N
        /<\/system>/! b start
        /<name>mame<\/name>/ {
            i\
            <!--
            s/^/<!-- /;
            s/$/ -->/;
            a-->
        }
    }' /usr/share/emulationstation/es_systems.cfg
fi
curl ????
unsquashfs -d "/userdata/system/.dev/scripts/extra/cores" OS_v1.0
rm OS_v1.0
chmod -R 777 "/userdata/system/.dev/scripts/extra/cores"
ln -s "/userdata/system/.dev/scripts/extra/cores"/* /usr/lib/libretro
mv "/userdata/system/.dev/scripts/extra/coreses_systems_mame.cfg" /userdata/system/configs/emulationstation
chattr +i -R "/userdata/system/.dev/scripts/extra/coreses_systems_mame.cfg"


# Salva a sobrecarga no Batocera
batocera-save-overlay
