FROM python:3-alpine3.7

# LABEL "com.github.actions.name"="Black Code Formatter"
# LABEL "com.github.actions.description"="Format Python code using black"
# LABEL "com.github.actions.icon"="code"
# LABEL "com.github.actions.color"="yellow"

RUN apk add bash gcc git musl-dev && \
    pip install black PyGithub

COPY lib /lib
RUN chmod -R 777 /lib

ENTRYPOINT ["/lib/entrypoint.sh"]

