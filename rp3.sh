mkdir exagear
cd exagear
##Download of Exagear
wget http://downloads.eltechs.com/exagear-desktop-v-3-0/exagear-desktop-rpi1.tar.gz
tar -xvzpf exagear-desktop-rpi1.tar.gz
echo '1. You have to buy Exagear for your Device. After you bought the license, you will get an email, which contains a key.'
echo '2. Download this Keyfile and copy in the current directory. (Maybe you have to open a new Terminal, but do not close this one!)'
read -p "Are you ready to continue? " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
    sudo ./install-exagear.sh
    exagear
    echo 'You are now inside the x86 world.'
    echo 'Pull updates!'
    sudo apt-get update && sudo apt-get upgrade
    echo 'Creating new User (teamspeak) for security reasons.'
    sudo adduser teamspeak
    echo 'Enter password for user teamspeak:'
    sudo passwd teamspeak
    echo 'Change to User: teamspeak'
    su teamspeak
    echo 'Downloading needed software (bzip2)!'
    sudo apt-get --yes install bzip2 ca-certificates netcat-openbsd wget

    echo 'Download TeamSpeak 3 Server for Linux 32-bit latest version and unpack it:'
    cd /usr/local/teamspeak
    wget http://dl.4players.de/ts/releases/3.5.1/teamspeak3-server_linux_x86-3.5.1.tar.bz2
    tar -xvzf teamspeak3-server_linux-x86-3.5.1.tar.gz
    rm teamspeak3-server_linux-x86-3.5.1.tar.gz

    echo 'Accepting license agreement!'
    touch teamspeak3-server_linux_x86/.ts3server_license_accepted

    echo 'First start of your TS- Server. This can take several minutes. The last initialisation step is: CIDRManager     |    | updated query_ip_whitelist ips: ...'
    echo 'After that you can Exit with CTRL + C'

    echo '------------------------------------'
    echo ' use: "/usr/local/teamspeak/teamspeak3-server_linux_x86/ts3server_startscript.sh start" to run the server in the backround'

fi
