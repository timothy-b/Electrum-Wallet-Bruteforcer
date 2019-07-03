FROM debian:9
# As of now, pycrypto is a dependency of python-pip, but we'll try to install it anyways
RUN apt-get update \
    && apt-get install git python2.7 python-pip --assume-yes \
    && ln -s /usr/bin/python2.7 /bin/python \
    && pip install pycrypto
RUN cd /root && git clone https://github.com/timothy-b/btcrecover.git
ADD run.sh /root/btcrecover
ADD tokens.txt /root/btcrecover
