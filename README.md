raspberrypi-python-client + resin.io
==========

A library that provide access to the ATT IOT platform, for the Python language (geared for RPI development).

<!--

### flavours
There are 2 flavours of the IOT library. Use a library according to your needs.
  1. regular: The RPI will act as a single device, directly connected to the IOT platform. You are responsible for creating the device manually on the platform, any assets can be created through the script.
  2. gateway: The RPI will function as a gateway for other devices, which communicate with the gateway-RPI through xbee modules. Devices and their assets are automatically created whenever a new xbee device connects to the gateway.


### Dependencies
  1. The library depend on the [paho.mqtt.client module](http://eclipse.org/paho/clients/python/).
  


  2. the demo template script for the gateway also relies on:
    - [pyserial] (http://pyserial.sourceforge.net/)
	- [python-xbee] (https://code.google.com/p/python-xbee/)

-->


### Instructions

  1. Setup the raspberry pi hardware
    - Grove kit shield
    - Push button to A2
    - Led light to D4
  2. Create an account on resin.io.
    - Create an app and download its os
    - Burn the os to sd and insert that into the device, more details (here)[http://docs.resin.io/#/pages/installing/gettingStarted.md#burning-the-os-image-onto-the-sd-card]
    - Wait for you device appear on the dashboard. 
  3. Push code to your device. 
    - git clone this repository to your local machine
    ```
    $ git clone https://github.com/craig-mulligan/smartLivingDemo.git 
    ```
    - add your resin remote. (found at the top right of your dashboard)
    ```
    $ git remote add resin git@git.resin.io:USERNAME/APPNAME.git
    ```
  4. Create an account on smartliving.io
    - Create a device in your smartliving dashboard and get the device credentials ready for the next step. 

  5. Configure your variables
    - In the resin.io application envirmoment variables tab add the following Keys with values from you smartliving security credentials. 

    - DEVICEID : "YourDeviceIdHere"
    - CLIENTID : "YourClientIdHere"
    - CLIENTKEY : "YourClientKeyHere"
    - BUTTONPIN : "The pin you connect your button to on grovePi"
    - LEDPIN : "The pin your connect you LED to on the grovePi"

  6. Set up your rules in on your smartliving dashboard. 
    - Set if button == true then LED == true else LED == false
    - you could also set up a email alert when the LED is switched. 


### Extra info

- This [tutorial](http://docs.smartliving.io/Raspberry_Pi/more_info) contains a full recipe and detailed explenation on all aspects of the process. It guides you into setting up your Grove Pi, SD card and the platform. 
- There's a [trouble shooting section](Raspberry_Pi/trouble_shooting) you can check out if you are having problems.
- Also make certain that you check out all the availabile documentation that we have for the [respberry pi](http://docs.smartliving.io/Get_Started/Raspberry_Pi).
- Check out [dexter industries (makers of the GrovePi)](http://www.dexterindustries.com/GrovePi/) excellent [tutorial for the RPI B+](http://www.dexterindustries.com/GrovePi/get-started-with-the-grovepi/raspberry-pi-model-b-grovepi/) on how to install the hardware.  
