FROM thinca/vim:latest-full-ubuntu



WORKDIR /root
COPY ./set_env.sh .
RUN chmod +x ./set_env.sh 
RUN ./set_env.sh

COPY ./set_dot_file.sh .
COPY ./c.comments.template .
RUN chmod +x ./set_dot_file.sh 
RUN ./set_dot_file.sh

RUN rm -rf set_env.sh


ENTRYPOINT ["/bin/zsh"]

