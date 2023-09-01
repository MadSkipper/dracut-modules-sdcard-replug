install:
	cp -r 00sdcard-replug /usr/lib/dracut/modules.d/
	mkdir -p /etc/dracut.conf.d
	echo "add_dracutmodules+=\" sdcard-replug \"" > /etc/dracut.conf.d/sdcard-replug.conf
