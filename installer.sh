#!/bin/bash
clear
echo 'Installer Alpha-OS x NETDATA'
echo 'by nosignals'
echo ' '
echo '1. Checking Package...'
    netdata=$(opkg list | grep 'netdata is a highly' | awk '{print $1}')
    ubus=$(opkg list | grep 'OpenWrt RPC client utility' | awk '{print $1}')
if [ -z "$netdata" ]; then 
	echo '1.1 Package netdata Not Installed...'
	sleep 1
	echo '    Installing netdata...'
	opkg install netdata &> /dev/null
	echo '    Installed.'
	else echo '1.1 Package netdata Installed - skipping...'
	fi
sleep 1
if [ -z "$ubus" ]; then 
	echo '1.2 Package ubus Not Installed...'
	sleep 1
	echo '    Installing ubus...'
	opkg install ubus &> /dev/null
	echo '    Installed.'
	else echo '1.2 Package ubus Installed - skipping...'
	fi
sleep 1
echo '2. Installing NETDATA Dashboard...'

function installing(){
	echo '2.1 Clone repository...'
	git clone --depth=1 https://github.com/derisamedia/alpha-os-X-NETDATA.git &> /dev/null
	echo '2.2 Copying Files...'
	rm -rf /www/netdata
	mv alpha-os-X-NETDATA/netdata/execute/netdata.sh /sbin/netdata.sh
	mv alpha-os-X-NETDATA/netdata /www/netdata
	sleep 2
	echo '2.3 Setting Permission...'
	chmod +x /sbin/netdata.sh
	sleep 1
	echo '2.4 Setting Cronjob...'
	/etc/init.d/cron stop
	echo '' >> '/etc/crontabs/root'
	echo '* */5 * * * /sbin/netdata.sh' >> '/etc/crontabs/root'
	/etc/init.d/cron start
	sleep 1
	echo '2.5 Clearing Temporary Files...'
	rm -rf alpha-os-X-NETDATA
	sleep 1
	echo 'Installing Done...'
	echo 'Please Check http://192.168.1.1/netdata'
}
installing