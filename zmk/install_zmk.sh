pip3 install pyelftools

wget https://nsscprodmedia.blob.core.windows.net/prod/software-and-other-downloads/desktop-software/nrf-command-line-tools/sw/versions-10-x-x/10-23-0/nrf-command-line-tools-10.23.0_linux-amd64.tar.gz
tar zxvf nrf-command-line-tools-10.23.0_linux-amd64.tar.gz
echo 'PATH=/work/nrf-command-line-tools/bin:$PATH' >> ~/.zshrc

# tar xf /work/JLink_Linux_V788j_x86_64.tgz
# chmod a-w /work/JLink_Linux_V788j_x86_64

# echo 'LD_LIBRARY_PATH=/work/JLink_Linux_V788j_x86_64' >> ~/.zshrc

# rm JLink_Linux_V788j_x86_64.tgz
apt install udev
apt -f install libxcb-render-util0 libxcb-shape0 libxcb-icccm4 libxcb-keysyms1 libxcb-image0 libxkbcommon-x11-0
dpkg -i JLink_Linux_V792d_x86_64.deb 
rm JLink_Linux_V792d_x86_64.deb 
rm nrf-command-line-tools-10.23.0_linux-amd64.tar.gz

git clone https://github.com/shiqi-614/zmk.git

cd zmk

west init -l app/

west update

