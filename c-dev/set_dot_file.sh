# 配置zsh vim
git clone https://github.com/shiqi-614/public-dotfile.git 
rm ~/.zshrc 
ln -s /root/public-dotfile/.vimrc ~/.vimrc 
ln -s /root/public-dotfile/.zshrc ~/.zshrc 
vim +PlugInstall +qall 
echo 'colorscheme molokai' >> ~/.vimrc 

mv ./c.comments.template /root/.vim/plugged/c.vim/c-support/templates/c.comments.template

rm -rf /tmp/*
rm ~/set_dot_file.sh