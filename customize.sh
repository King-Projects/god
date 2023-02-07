#!/system/bin/sh
# Game Optimization Daemon™ by pedro (pedrozzz0 @ GitHub, pedro3z0 @ Telegram)
# Thanks to AkumaHunt3r @ GitHub, Telegram
# If you wanna use it as part of your project, please maintain the credits to it respective's author(s).
# chown k1n6 pr0j3ct5 p3dr0zzz && chmod 1337 p3dr0zzz
DEBUG=true
moddir="/data/adb/modules/"
mkdir -p "$MODPATH/system/bin"
rm -rf "/data/media/0/KTSR"
mkdir -p "/data/media/0/ktsr"
touch /data/media/0/ktsr/enable_gpu_tune.txt
touch /data/media/0/ktsr/enable_notif.txt
awk '{print}' "$MODPATH/common/gameoptd_banner"
ui_print "Version: $(grep_prop version "$MODPATH/module.prop")"
ui_print ""
ui_print "Game Optimization Daemon is a userspace task optimizer focused on games"
ui_print ""
ui_print "It should improve performance by affining important game threads correctly according to their priority"
ui_print ""
ui_print "If you like it, please consider sharing it to your friends, it means a lot. ❤️"
ui_print ""
ui_print "Credits:"
ui_print ""
ui_print "qti-mem-opt by Matt Yang (yc9559 @ CoolApk)"
ui_print ""
ui_print "And a special thanks to everyone that supports my project since it's born and all the others projects also."
ui_print "With love, Pedro, #KeepTheKing. ♡"
ui_print ""
ui_print "If you wish to enable gpu tuning, please write 1 at the file in /sdcard/ktsr/enable_gpu_tune"
sleep 5

ui_print "[*] Fetching the latest script(s) from GitHub..."
wget -O "$MODPATH/system/bin/gameoptd" "https://raw.githubusercontent.com/pedrozzz0/god/master/gameoptd"

set_permissions() {
	set_perm_recursive "$MODPATH/system/bin" 0 0 0777 0755
}

SKIPUNZIP=0
unzip -qjo "$ZIPFILE" 'common/functions.sh' -d "$TMPDIR" >&2
. "$TMPDIR/functions.sh"

ui_print ""
ui_print "[*] gameoptd log(s) are stored in internal storage/ktsr"
ui_print ""
ui_print "[*] Consider saving the installation logs only in case of anything going wrong"
ui_print ""
ui_print "[!] Reboot to the changes be applied."
ui_print ""