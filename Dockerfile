FROM python:latest
RUN curl -LOs https://archive.org/download/ia-pex/ia
RUN chmod +x ia
RUN apt-get update && apt-get install -y tini
COPY start.sh /
WORKDIR /downloads
ENTRYPOINT [ "tini", "--" ]
CMD [ "/start.sh" ]
