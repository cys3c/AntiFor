#!/bin/bash
echo -e "   ____  ____   ______  ____  _____   ___   ____   "
echo -e "  /    ||    \ |      ||    ||     | /   \ |    \  "
echo -e " |  o  ||  _  ||      | |  | |   __||     ||  D  ) "
echo -e " |     ||  |  ||_|  |_| |  | |  |_  |  O  ||    /  "
echo -e " |  _  ||  |  |  |  |   |  | |   _] |     ||    \  "
echo -e " |  |  ||  |  |  |  |   |  | |  |   |     ||  .  \ "
echo -e " |__|__||__|__|  |__|  |____||__|    \___/ |__|\_| "
echo -e "     An Anti-Forensics Script In the Makings       "
echo -e "	  @Psychomimetic Instagram \n  		    "
PS3='Enter Selection: '
options=("BleachBit" "Shred" "MAT" "ExfilTool" "USBKill" "Randomize Hostname (Glitchy)" 
"Quit")
select opt in "${options[@]}"
do
	case $opt in
	    "BleachBit")
		sudo bash bleachbit.sh
		;;
	    "Shred")
		bash shred.sh
		;;
	    "MAT")
		bash mat.sh
		;;
	    "ExifTool")
		bash exiftool.sh
		;;
	    "USBKill")
		sudo python usbkill.py
		;;
	    "Randomize Hostname (Glitchy)")
		sudo bash hostrandom.sh
		;;
	    "Quit")
		break
		;;
	    *) echo Invalid Option;;
	esac
done
