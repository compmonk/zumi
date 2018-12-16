echo "Downloading Postman..."
wget https://dl.pstmn.io/download/latest/linux64 -O postman.tar.gz
echo "Extracting Postman..."
sudo tar -xzf postman.tar.gz -C /opt
rm postman.tar.gz
sudo ln -sf /opt/Postman/Postman /usr/bin/postman

echo "Creating Dekstop entry"
cat > ~/.local/share/applications/postman.desktop <<EOL
[Desktop Entry]
Encoding=UTF-8
Name=Postman
Exec=postman
Icon=/opt/Postman/resources/app/assets/icon.png
Terminal=false
Type=Application
Categories=Development;
EOL

echo "Done"
