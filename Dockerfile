FROM python:3-alpine3.7

RUN apk add bash gcc git musl-dev && \
    pip install black PyGithub

COPY lib /lib
RUN chmod -R 777 /lib

ENTRYPOINT ["/lib/entrypoint.sh"]

