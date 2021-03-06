echo "Downloading Robo3T..."
wget https://download.robomongo.org/1.2.1/linux/robo3t-1.2.1-linux-x86_64-3e50a65.tar.gz -O robo3t.tar.gz
echo "Extracting Robo3T..."
sudo tar -xzf robo3t.tar.gz -C /opt/
sudo mv /opt/robo3t-1.2.1-linux-x86_64-3e50a65 /opt/robo3t
wget https://github.com/shalev67/Robo3T-snap/blob/master/snap/gui/icon.png -O /opt/robo3t/icon.png
#rm robo3t.tar.gz
sudo ln -sf /opt/robo3t/bin/robo3t /usr/bin/robo3t

echo "Creating Dekstop entry"
cat > ~/.local/share/applications/robo3t.desktop <<EOL
[Desktop Entry]
Encoding=UTF-8
Name=Robo3T
Exec=robo3t
Icon=/opt/robo3t/icon.png
Terminal=false
Type=Application
Categories=Development;
EOL

echo "Done"
