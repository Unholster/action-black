FROM python:3.7.5-alpine

LABEL "com.github.actions.name"="Black Code Formatter"
LABEL "com.github.actions.description"="Format Python code using black"
LABEL "com.github.actions.icon"="code"
LABEL "com.github.actions.color"="yellow"

# RUN apt-get update && apt-get install -y git
RUN apk add gcc musl-dev python3-dev
# RUN apt-get install -y jq
RUN pip install black

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]