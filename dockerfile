FROM debian:9
RUN apt-get update \
    && apt-get install git python2.7 --assume-yes \
    && ln -s /usr/bin/python2.7 /bin/python
RUN cd /root && git clone https://github.com/timothy-b/btcrecover.git
ADD walletinfo.txt /root/btcrecover
ADD tokens.txt /root/btcrecover
