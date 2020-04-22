echo "Downloading Postman Canary..."
wget https://dl.pstmn.io/download/channel/canary/linux_64 -O canary.tar.gz
echo "Extracting Postman Canary..."
sudo tar -xzf canary.tar.gz -C /opt
rm canary.tar.gz
sudo ln -sf /opt/PostmanCanary/app/PostmanCanary /usr/bin/canary

echo "Creating Dekstop entry"
cat > ~/.local/share/applications/canary.desktop <<EOL
[Desktop Entry]
Encoding=UTF-8
Name=Postman Canary
Exec=canary
Icon=/opt/PostmanCanary/app/resources/app/assets/icon.png
Terminal=false
Type=Application
Categories=Development;
EOL

echo "Done"
