#!/bin/sh

LOCPATH=`/usr/bin/dirname "$0"`

/bin/sleep 2

"/sbin/kextunload" "$LOCPATH/AtherosWifi.kext"
/bin/sleep 2
"/sbin/kextunload" "$LOCPATH/IO80211Family.kext"
/bin/sleep 2
"/sbin/kextunload" "$LOCPATH/AtherosHAL.kext"

if [ -e "/System/Library/Extensions/OMI_80211g.kext" ]; then
    /bin/sleep 2
    /sbin/kextload "/System/Library/Extensions/OMI_80211g.kext"
    /bin/sleep 1
    /Library/StartupItems/Wireless/WirelessConfigurationService
fi