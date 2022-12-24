FROM shiqi614/c-dev:latest

WORKDIR /root

RUN git clone https://github.com/shiqi-614/LeetCode.git 

WORKDIR /root/LeetCode
RUN git remote set-url origin git@github.com:shiqi-614/LeetCode.git

ENTRYPOINT ["/bin/zsh"]

