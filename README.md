Smartliving.io + resin.io + grovePi
==========

Smartliving is a realtime messaging platform which leverages if/then/else rules to make things really easy. Resin.io is a deployment platform that pushes docker containers to your device with a simple git push. Which makes provisioning and deploying code easy as Pi. I've combined these two to with grovePi to make things EVEN easier. 

This is a basic demo that just switches on a LED when you hold down a button. But once you've got this down you can build a ton of things with these tools. 

### Instructions

  1. Setup the raspberry pi hardware
    - Grove kit shield
    - Push button to A2
    - Led light to D4 
    - Connect to internet
    - Have an sd card ready.

  2. Create an account on [resin.io](https://resin.io/).
    - Create an app and download its os
    - Burn the os to sd and insert that into the device, more details (here)[http://docs.resin.io/#/pages/installing/gettingStarted.md#burning-the-os-image-onto-the-sd-card]
    - Wait for you device appear on the dashboard. 
    ![alt text](http://i.imgur.com/d9qJZ4v.png "resin.io dashboard")
	
  3. Push code to your device. 
    - git clone this repository to your local machine
    ```
    $ git clone https://github.com/craig-mulligan/smartLivingDemo.git 
    ```
    - add your resin remote. (found at the top right of your dashboard)
    ```
    $ git remote add resin git@git.resin.io:USERNAME/APPNAME.git
    ```
    - push your code. You should be presented with a unicorn when it successfully builds and pushes your image to the resin servers.
    
    ```
    $ git push resin master
    ```
    ![alt text](http://i.imgur.com/oErRyzs.png "resin.io dashboard")
    
    - The first push may take a fair few minutes, resin.io is pushing a full container, including the OS and all the dependencies over the air to your device, which can take sometime if you network is slow. 
    
  4. Create an account on smartliving.io
    - Create a device in your smartliving dashboard and get the device credentials ready for the next step. 

  5. Configure your variables
    - In the resin.io application envirmoment variables tab add the following Keys with values from you smartliving security credentials. 

    - DEVICEID : "YourDeviceIdHere"
    - CLIENTID : "YourClientIdHere"
    - CLIENTKEY : "YourClientKeyHere"
    - BUTTONPIN : "The pin you connect your button to on grovePi" (defaults to 2)
    - LEDPIN : "The pin your connect you LED to on the grovePi" (defaults to 4)
    ![alt text](http://i.imgur.com/x17hbcY.png "Envars")

  6. Set up your rules in on your smartliving dashboard. 
    - We have already initialised a button sensor & a LED actuator via the API, so they should be present in your device deashboard. Now we just need to set rules to allow them to interact. 
    - Set if button == true then LED == true else LED == false
    ![alt text](http://i.imgur.com/dkLqyo8.png "set rules")

    - you could also set up a email alert when the LED is switched. 
    ![alt text](http://i.imgur.com/Xyo0mLX.png "set rules")

### Extra info

- This [tutorial](http://docs.smartliving.io/Raspberry_Pi/more_info) contains a full recipe and detailed explenation on all aspects of the process. It guides you into setting up your Grove Pi, SD card and the platform. 
- There's a [trouble shooting section](Raspberry_Pi/trouble_shooting) you can check out if you are having problems.
- Also make certain that you check out all the availabile documentation that we have for the [respberry pi](http://docs.smartliving.io/Get_Started/Raspberry_Pi).
- Check out [dexter industries (makers of the GrovePi)](http://www.dexterindustries.com/GrovePi/) excellent [tutorial for the RPI B+](http://www.dexterindustries.com/GrovePi/get-started-with-the-grovepi/raspberry-pi-model-b-grovepi/) on how to install the hardware.  
