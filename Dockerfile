FROM python:3-alpine3.7

LABEL "com.github.actions.name"="Black Code Formatter"
LABEL "com.github.actions.description"="Format Python code using black"
LABEL "com.github.actions.icon"="code"
LABEL "com.github.actions.color"="yellow"

ADD entrypoint.sh /entrypoint.sh

RUN apk add gcc musl-dev && \
    pip install black

ENTRYPOINT ["/entrypoint.sh"]

