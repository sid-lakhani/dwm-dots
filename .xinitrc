#!/bin/sh

prefix="/usr"
exec_prefix="${prefix}"
xrdb="xrdb"
xinitdir="/etc/X11/xinit"
xclock="xclock"
xterm="xterm"
twm="twm"
xmodmap="xmodmap"

userresources="$HOME/.Xresources"
usermodmap="$HOME/.Xmodmap"
sysresources="$xinitdir/.Xresources"
sysmodmap="$xinitdir/.Xmodmap"

# merge in defaults and keymaps

if [ -f "$sysresources" ]; then
    if [ -x /usr/bin/cpp ] ; then
        "$xrdb" -merge "$sysresources"
    else
        "$xrdb" -nocpp -merge "$sysresources"
    fi
fi

if [ -f "$sysmodmap" ]; then
    "$xmodmap" "$sysmodmap"
fi

if [ -f "$userresources" ]; then
    if [ -x /usr/bin/cpp ] ; then
        "$xrdb" -merge "$userresources"
    else
        "$xrdb" -nocpp -merge "$userresources"
    fi
fi

if [ -f "$usermodmap" ]; then
    "$xmodmap" "$usermodmap"
fi

# start some nice programs

if [ -d "$xinitdir"/xinitrc.d ] ; then
	for f in "$xinitdir/xinitrc.d"/?*.sh ; do
		[ -x "$f" ] && . "$f"
	done
	unset f
fi

/usr/lib/xdg-desktop-portal &
/usr/lib/xdg-desktop-portal-gtk &

xinput set-prop "ELAN0792:00 04F3:31C2 Touchpad" "libinput Tapping Enabled" 1 &
dunst &
dwmblocks &
# This is the listener that sends Signal 11 to dwmblocks when media changes.
playerctl --follow status 2>/dev/null | while read -r STATUS; do 
    if [ -n "$STATUS" ]; then 
        pkill -RTMIN+11 dwmblocks
    fi
done &
/home/sidlakhani/.local/bin/newlook &
xcompmgr &
exec dwm
