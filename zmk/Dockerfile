FROM shiqi614/c-dev:latest

WORKDIR /work

COPY ./install_env.sh .
RUN chmod +x ./install_env.sh 
RUN ./install_env.sh


COPY ./install_zmk.sh .
RUN chmod +x ./install_zmk.sh 
RUN ./install_zmk.sh 
RUN rm install_env.sh && rm install_zmk.sh

WORKDIR /work/zmk

ENTRYPOINT ["/bin/zsh"]


