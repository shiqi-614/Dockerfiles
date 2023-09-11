
# tar xf /work/JLink_Linux_V788j_x86_64.tgz
# chmod a-w /work/JLink_Linux_V788j_x86_64

# echo 'LD_LIBRARY_PATH=/work/JLink_Linux_V788j_x86_64' >> ~/.zshrc

# rm JLink_Linux_V788j_x86_64.tgz
apt -f udev install libxcb-render-util0 libxcb-shape0 libxcb-icccm4 libxcb-keysyms1 libxcb-image0 libxkbcommon-x11-0
dpkg -i JLink_Linux_V792d_x86_64.deb 
rm JLink_Linux_V792d_x86_64.deb 

