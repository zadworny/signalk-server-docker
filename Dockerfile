FROM node:14-slim

RUN apt-get update && apt-get -y install libavahi-compat-libdnssd-dev sudo git python3 build-essential
RUN groupadd -r i2c -g 998 && groupadd -r spi -g 999 && usermod -a -G dialout,i2c,spi node

RUN echo 'node ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

USER node
RUN mkdir -p /home/node/
WORKDIR /home/node/
RUN git clone https://github.com/SignalK/signalk-server-node.git signalk

WORKDIR /home/node/signalk
RUN npm install
RUN npm run build
RUN mkdir -p /home/node/.signalk

EXPOSE 3000
ENV IS_IN_DOCKER true
CMD ["bash"]
