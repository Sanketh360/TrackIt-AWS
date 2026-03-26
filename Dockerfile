FROM ubuntu:latest
LABEL authors="shanks"

ENTRYPOINT ["top", "-b"]