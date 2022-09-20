FROM ubuntu:18.04

WORKDIR /Env

RUN apt update && apt install -y make git wget lbzip2 unzip vim curl zsh python3-pip automake autoconf pkg-config ncurses-dev && rm -rf /var/lib/apt/lists/* && pip3 install --upgrade pip && pip3 install nrfutil && curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim && sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" && git clone https://github.com/universal-ctags/ctags.git && cd ctags && ./autogen.sh && ./configure && make && make install && cd .. && wget https://ftp.gnu.org/pub/gnu/global/global-6.6.8.tar.gz  && tar zxvf global-6.6.8.tar.gz && cd global-6.6.8 && ./configure && make && make install && cd .. && git clone https://github.com/vim/vim.git && cd vim/src && ./configure --with-features=huge --enable-python3interp && make && make install


ENTRYPOINT ["/bin/zsh",  "-l", "-c" ]

