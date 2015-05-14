apt-get -y install python-dev
apt-get -y install python python-dev python-pip git libi2c-dev python-serial i2c-tools python-smbus 
pip install RPi.GPIO

cd /app	#make certain that git clone is done frmo the right directory.
pip install paho-mqtt
