dir=$(pwd)
cd /usr/local/bin/
sudo curl -s https://raw.githubusercontent.com/ooxofficial/ooxfetch --output maxfetch
sudo chmod +x /usr/local/bin/maxfetch
echo "Done!"
ooxfetch
cd $dir
