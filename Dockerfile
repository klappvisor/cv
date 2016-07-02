FROM ubuntu:16.04

RUN apt-get update && apt-get install -y texlive-full

RUN apt-get install fonts-font-awesome

RUN apt-get autoclean && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# prepare dir
RUN mkdir /source

VOLUME ["/source"]
WORKDIR /source
CMD ["bash"]