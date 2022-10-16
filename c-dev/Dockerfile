FROM thinca/vim:latest-full-ubuntu


WORKDIR /tmp
COPY ./set_env.sh .
RUN chmod +x ./set_env.sh && ./set_env.sh

WORKDIR /root
COPY ./set_dot_file.sh .
COPY ./c.comments.template .
RUN chmod +x ./set_dot_file.sh && ./set_dot_file.sh


ENTRYPOINT ["/bin/zsh"]

