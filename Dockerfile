FROM nikolaik/python-nodejs:python3.8-nodejs12-alpine

# LABEL "com.github.actions.name"="Black Code Formatter"
# LABEL "com.github.actions.description"="Format Python code using black"
# LABEL "com.github.actions.icon"="code"
# LABEL "com.github.actions.color"="yellow"

RUN apk add bash gcc git musl-dev && \
    pip install black

COPY entrypoint.sh /entrypoint.sh
RUN chmod 777 /entrypoint.sh
COPY request.js /request.js
RUN chmod 777 /request.js

ENTRYPOINT ["/entrypoint.sh"]

