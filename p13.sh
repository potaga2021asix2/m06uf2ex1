#!/bin/bash
clear

echo -n "Indica un nom base: "
read vinic

echo -n "Indica la quantitat d'usuaris: "
read qt


echo

if [[ -e nombase.txt ]]
then
    rm nombase.txt
fi

nU=0
echo "USUARI		PASSWORD" >> nombase.txt
for (( i=1; i<=$qt; i++))
do
	ctsnya_usr=$(pwgen 10 1)
	echo "$vinic$nU@fje	$ctsnya_usr" >> nombase.txt
	((nU++))
done

echo "Done!"
exit 0
