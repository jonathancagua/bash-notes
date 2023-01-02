#!/usr/bin/env bash
# Bash para captura la informacion del usuario utilizando echo read

option=0
backupName=""
echo "Programa Utilidades Postgres"
echo -n "Ingresar una opcion:"
read
option=$REPLY
echo -n "Ingresa el nombre del archivo de Backup:"
read
backupName=$REPLY
echo "La opcion selecionada fue : $option y el nombre del Backup es: $backupName"

