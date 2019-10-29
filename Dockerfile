FROM python:3-alpine3.7

LABEL "com.github.actions.name"="Black Code Formatter"
LABEL "com.github.actions.description"="Format Python code using black"
LABEL "com.github.actions.icon"="code"
LABEL "com.github.actions.color"="yellow"

RUN apk add bash gcc git musl-dev && \
    pip install black

COPY entrypoint.sh /entrypoint.sh
RUN chmod 777 /entrypoint.sh
COPY request.py /request.py
RUN chmod 777 /request.py

ENTRYPOINT ["/entrypoint.sh"]

