FROM python:latest
RUN curl -LOs https://archive.org/download/ia-pex/ia
RUN chmod +x ia
WORKDIR /downloads
CMD /ia download $COLLECTION --glob=${GLOB:-*}
