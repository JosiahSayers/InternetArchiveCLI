FROM python:latest
RUN curl -LOs https://archive.org/download/ia-pex/ia
RUN chmod +x ia
COPY start.sh /
WORKDIR /downloads
CMD /start.sh
