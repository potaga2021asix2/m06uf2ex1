#!/bin/bash
#POL TARRAGÓ GARGALLO
clear
if (( EUID != 0))
then
	echo "Aquest script s'ha d'executar amb prilegis de l'usuari root"
	exit 1
fi

echo "Quin nom de usuari vols afegir al grup?: "
read usr
echo "Quin nom de grup el vols afegir?: "
read grp

echo "Vols continuar?: (En cas afirmatiu prem y)"
read cont
if [[ $cont == "y" ]]
then
	gpasswd -a $usr $grp
	if [ $? -ne 0 ]
	then
		echo "Usuari no afegit al grup ja que no existeix"
	else
		echo "Afegim l'usuari ${usr} al grup ${grp}."
	fi
else
	exit 3
fi

