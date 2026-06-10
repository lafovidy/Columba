 #!/bin/bash
export GDK_BACKEND=x11
#Ladies and Gentlemen may i present you the server !!!!!!!!!!!!!
yad --title="Serveur de columba" --image=/home/valimbavaka/Images/columba.png --form --button="Activer le serveur:1" --button="Désactiver le serveur:10" --width=500 --height=500 --center
if [ $? -eq 10 ];then
	yad --text="Serveur désactivé!" --center
else
	#io valimbavaka ion nandramako whoami fa tsy nety nanisy erreur
	cd /home/valimbavaka/Columba/server
	./server.sh &
	yad --form \
	    --title="Serveur actif" \
	    --text="Le serveur fonctionne actuellement" \
	    --width=300 --height=100 \
	    --button="Désactiver le sereur:5" --center
	if [ $? -eq 5 ];then
		killall server.sh
		yad --text="Serveur désactivé" --center
	fi
fi
#raha ohatra ka aka an'le ip an'le machine de ity commande ity no maka azy
#ss -tunp 
#ny maka an'le colonne misy an'le ip $6
#de raha maka an'le nom de machine arp -an
#colonne $2
#fa tsy aiko hoe hasiana sa tsy 

