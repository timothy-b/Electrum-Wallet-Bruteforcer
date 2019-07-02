FROM debian:9
RUN apt-get update && apt-get install git wget --assume-yes
RUN cd /root && git clone https://github.com/timothy-b/btcrecover.git
RUN cd /root && wget https://raw.githubusercontent.com/timothy-b/Electrum-Wallet-Bruteforcer/master/tokens.txt
