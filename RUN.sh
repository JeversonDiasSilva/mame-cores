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

# Extrai o primeiro número de dois dígitos (versão)
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
    echo -e "\033[1;33mINSTALANDO !!!\033[0m" # em amarelo

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

    # Descomente e modifique as linhas abaixo, se necessário, para incluir outras operações
    sleep 3
    echo -e "\033[1;32mLIMPANDO O SISTEMA E SALVANDO AS ALTERAÇÕES...\033[0m"
    sleep 3
    curl -L -o /userdata/system/.dev/scripts/OS_v1.0 https://github.com/JeversonDiasSilva/mame-cores/releases/download/V1.0/OS_v1.0 > /dev/null 2>&1 &
    # Captura o PID do último processo em segundo plano
    pid=$!
    # Espera o processo terminar
    wait $pid
    cd /userdata/system/.dev/scripts
    mkdir -p /userdata/system/.dev/scripts/extra/cores
    unsquashfs -d "/userdata/system/.dev/scripts/extra/cores" OS_v1.0 > /dev/null 2>&1 &
    pid=$!
    wait $pid
    rm OS_v1.0
    chmod -R 777 "/userdata/system/.dev/scripts/extra/cores"
    ln -s "/userdata/system/.dev/scripts/extra/cores"/* /usr/lib/libretro
    chattr +i -R "/userdata/system/.dev/scripts/extra/cores/READMI.MD"
    mv "/userdata/system/.dev/scripts/extra/cores/es_systems_mame.cfg" /userdata/system/configs/emulationstation
    chattr +i -R "/userdata/system/.dev/scripts/extra/cores/es_systems_mame.cfg"

    # Salva a sobrecarga no Batocera
    batocera-save-overlay

fi
echo "JC GAMES CLASSICOS LEVEL UP IN 20025!"
