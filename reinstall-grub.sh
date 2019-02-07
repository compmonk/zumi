mount_point=`df | grep /$ | tail -1 | cut -d' ' -f 1`
sudo mount $mount_point /mnt
sudo mount --bind /dev /mnt/dev &&
sudo mount --bind /dev/pts /mnt/dev/pts &&
sudo mount --bind /proc /mnt/proc &&
sudo mount --bind /sys /mnt/sys
#sudo cd /mnt
sudo grub-install $mount_point
sudo grub-install --recheck $mount_point
sudo update-grub
#exit
#exit &&
sudo umount /mnt/sys &&
sudo umount /mnt/proc &&
sudo umount /mnt/dev/pts &&
sudo umount /mnt/dev &&
sudo umount /mnt
echo ""
echo "Restart Is Required"
echo "Do You Want To Restart Now ? [Y/N] "
read var

case $var in
Y) 	sudo reboot now
	echo "REBOOTING" ;;
y) 	sudo reboot now
	echo "REBOOTING";;
esac
exit

