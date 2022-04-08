#!/bin/bash
# POL TARRAGÓ GARGALLO
clear
if (( EUID != 0 ))
then
	echo "Aquest script s'ha d'executar amb prilegis de l'usuari root"
	exit 1 
fi
while true;
do
	echo "Introdueix el nom del paquet que vols instal·lar: "
	read paquet
	apt install $paquet
	if [ $? -ne 0 ]
	then
		echo "Paquet no trobat"
	else
		echo "Paquet Instal·lat"
	fi
	echo "Vols continuar?: (En cas afirmatiu prem 1)"
	read cont
	if [[ $cont == 1 ]]
	then
		echo "Tornem-hi doncs"
	else
		exit 20
	fi
done
