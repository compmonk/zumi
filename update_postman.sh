echo "Downloading Postman..."
wget https://dl.pstmn.io/download/latest/linux64 -O postman.tar.gz
echo "Removing old installations..."
rm -rf /opt/Postman
rm /usr/bin/postman
rm -rf ~/.config/Postman
echo "Extracting Postman..."
sudo tar -xzf postman.tar.gz -C /opt
rm postman.tar.gz
sudo ln -sf /opt/Postman/Postman /usr/bin/postman
echo "Done"
