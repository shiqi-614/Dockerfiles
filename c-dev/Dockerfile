FROM thinca/vim:latest-full-ubuntu

WORKDIR /tmp

COPY ./install.sh .

RUN chmod +x ./install.sh && ./install.sh

WORKDIR /root

RUN git clone https://github.com/shiqi-614/public-dotfile.git && rm ~/.zshrc && ln -s /root/public-dotfile/.vimrc ~/.vimrc && ln -s /root/public-dotfile/.zshrc ~/.zshrc && vim +PlugInstall +qall && echo 'colorscheme molokai' >> ~/.vimrc 

COPY ./c.comments.template /root/.vim/plugged/c.vim/c-support/templates/c.comments.template


ENTRYPOINT ["/bin/zsh"]

