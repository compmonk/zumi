sudo touch /etc/lightdm/lightdm.conf
sudo echo [SeatDefaults] >> /etc/lightdm/lightdm.conf
sudo echo greeter-session=unity-greeter >> /etc/lightdm/lightdm.conf
sudo echo allow-guest=false >> /etc/lightdm/lightdm.conf

