FROM python:3-alpine

RUN pip install black

ENTRYPOINT ["black"]
