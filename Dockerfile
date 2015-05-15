FROM resin/rpi-raspbian:wheezy-2015-05-06

RUN apt-get update 

ADD . /app

# set up deps on build server
RUN bash /app/setupGrovePi.sh

# run when container starts on device
CMD ["bash", "/app/start.sh"]