FROM shiqi614/c-dev:latest

WORKDIR /work

COPY ./install_env.sh .
RUN chmod +x ./install_env.sh 
RUN ./install_env.sh

COPY ./install_jlink.sh .
COPY ./JLink_Linux_V792d_x86_64.deb .
RUN chmod +x ./install_jlink.sh 
RUN ./install_jlink.sh 

COPY ./install_zmk.sh .
RUN chmod +x ./install_zmk.sh 
RUN ./install_zmk.sh 
RUN rm install_env.sh && rm install_zmk.sh && rm install_jlink.sh

WORKDIR /work/zmk

ENTRYPOINT ["/bin/zsh"]


