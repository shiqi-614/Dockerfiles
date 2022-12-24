apt update 
apt install -y make git wget lbzip2 unzip vim curl zsh python3-pip automake autoconf pkg-config ncurses-dev netcat net-tools silversearcher-ag locales
rm -rf /var/lib/apt/lists/* 
pip3 install --upgrade pip 
pip3 install nrfutil 
pip3 install payments

# 多语言支持
locale-gen zh_CN
locale-gen zh_CN.utf8

curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim 

# zsh & plugins
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" 
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions 
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting 


git config --global user.email 'shiqi614@gmail.com'
git config --global user.name 'shiqi_614'

ssh-keygen -f /root/.ssh/id_rsa -q -N ""

# ctags
git clone https://github.com/universal-ctags/ctags.git 
cd ctags 
./autogen.sh 
./configure 
make 
make install 
cd .. 

# gtags
wget https://ftp.gnu.org/pub/gnu/global/global-6.6.8.tar.gz  
tar zxvf global-6.6.8.tar.gz 
cd global-6.6.8 
./configure 
make 
make install 
cd .. 

