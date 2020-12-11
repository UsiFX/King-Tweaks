# !/system/bin/sh
# KTS by pedrozzz (pedrozzz0 @ GitHub)

ui_print ""
ui_print "╭╮╭━╮ ╭━━━━╮ ╭━━━╮"
ui_print "┃┃┃╭╯ ┃╭╮╭╮┃ ┃╭━╮┃"
ui_print "┃╰╯╯╱ ╰╯┃┃╰╯ ┃╰━━╮"
ui_print "┃╭╮┃╱ ╱╱┃┃╱╱ ╰━━╮┃"
ui_print "┃┃┃╰╮ ╱╱┃┃╱╱ ┃╰━╯┃"
ui_print "╰╯╰━╯ ╱╱╰╯╱╱ ╰━━━╯"
ui_print "╱╱╱╱╱ ╱╱╱╱╱╱ ╱╱╱╱╱"
ui_print "╱╱╱╱╱ ╱╱╱╱╱╱ ╱╱╱╱╱"
ui_print "by pedrozzz (pedrozzz0 @ GitHub)"
ui_print ""
sleep 1
ui_print "Thanks to Eight (iamlazy123 @ GitHub)"
ui_print ""
sleep 1
ui_print "KTweak by Draco (tytydraco @ GitHub)"
ui_print ""
ui_print "Thanks to Dan (paget96 @ XDA)"
ui_print ""
sleep 1

loc=/data/adb/modules

if [[ -d $loc/injector ]]
then
abort "[!] A conflicting module/app is installed, please remove and then install King Tweaks again."
    
elif [[ -d $loc/Pulsar_Engine ]]
then 
abort "[!] A conflicting module/app is installed, please remove and then install King Tweaks again."
	
elif [[ -d $loc/zeetaatweaks ]] 
then 
abort "[!] A conflicting module/app is installed, please remove and then install King Tweaks again."
	
elif [[ -d $loc/gaming ]] 
then 
abort "[!] A conflicting module/app is installed, please remove and then install King Tweaks again."
	
elif [[ -d $loc/smext ]] 
then 
abort "[!] A conflicting module/app is installed, please remove and then install King Tweaks again."
	
elif [[ -d $loc/fkm_spectrum_injector ]] 
then 
abort "[!] A conflicting module/app is installed, please remove and then install King Tweaks again."
	
elif [[ -d $loc/NetworkTweak ]] 
then 
abort "[!] A conflicting module/app is installed, please remove and then install King Tweaks again."
	
elif [[ -d $loc/MAGNETAR ]] 
then 
abort "[!] A conflicting module/app is installed, please remove and then install King Tweaks again."
	
elif [[ -d $loc/FDE ]] 
then 
abort "[!] A conflicting module/app is installed, please remove and then install King Tweaks again."
	
elif [[ -d $loc/lazy ]] 
then 
abort "[!] A conflicting module/app is installed, please remove and then install King Tweaks again."
	
elif [[  $(pm list package feravolt) ]] 
then
abort "[!] A conflicting module/app is installed, please remove and then install King Tweaks again."
	
elif [[ -d $loc/ktweak ]] 
then 
abort "[!] A conflicting module/app is installed, please remove and then install King Tweaks again."
	
elif [[ $(pm list package ktweak) ]] 
then 
abort "[!] A conflicting module/app is installed, please remove and then install King Tweaks again."
	
elif [[ -d $loc/lspeed ]] 
then 
abort "[!] A conflicting module/app is installed, please remove and then install King Tweaks again."
	
elif [[ $(pm list package lspeed) ]] 
then 
abort "[!] A conflicting module/app is installed, please remove and then install King Tweaks again."
	
elif [[  $(pm list package magnetarapp) ]] 
then 
abort "[!] A conflicting module/app is installed, please remove and then install King Tweaks again."
	
elif [[ $(pm list package lsandroid) ]] 
then 
abort "[!] A conflicting module/app is installed, please remove and then install King Tweaks again."
	
elif [[ -d $loc/sqinjector ]]    
then 
abort "[!] A conflicting module/app is installed, please remove and then install King Tweaks again."
	
elif [[ -d $loc/ZeroLAG ]]    
then 
abort "[!] A conflicting module/app is installed, please remove and then install King Tweaks again."
	
elif [[ $(pm list package kitana) ]]
then
abort "[!] A conflicting module/app is installed, please remove and then install King Tweaks again."
fi
	
set_permissions() {
  set_perm_recursive $MODPATH/system/bin root root 0777 0755
}

SKIPUNZIP=0
unzip -qjo "$ZIPFILE" 'common/functions.sh' -d $TMPDIR >&2
. $TMPDIR/functions.sh

ui_print ""
fstrim -v /system
fstrim -v /data
fstrim -v /cache
ui_print ""
ui_print "[*] Installing King Tweaks app..."
pm install $MODPATH/KingTweaks.apk
sleep 1
ui_print ""
ui_print "[*] Installing King Toast app..."
pm install $MODPATH/KingToast.apk
sleep 1
ui_print ""
ui_print "[*] Logs are stored in your internal storage/KTS"
sleep 1
ui_print ""
ui_print "[*] Now, reboot."
sleep 1
ui_print ""
P1="Improving user-experience and performance of $(getprop ro.product.model). Telegram: @kingcreationschannel"
sed -i "/description=/c description=${P1}" $MODPATH/module.prop;