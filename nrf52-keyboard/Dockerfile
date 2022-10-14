FROM shiqi614/c-dev:latest

WORKDIR /work
RUN git clone https://github.com/shiqi-614/nrf52-keyboard.git

WORKDIR /work/nrf52-keyboard
RUN git submodule update --init --recursive

COPY ./pre.sh .
RUN chmod +x ./pre.sh && ./pre.sh

COPY ./sdk.sh .
RUN chmod +x ./sdk.sh && ./sdk.sh

COPY ./post.sh .
RUN chmod +x ./post.sh && ./post.sh

ENTRYPOINT ["/bin/zsh"]


