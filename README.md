
RasberryPi-Geocaching
=====================

- Perl/Python based code for Geocaching with a 1602 LCD and a RPi 
- This project is not entirely my own work, credits to [Adafruit](https://learn.adafruit.com/drive-a-16x2-lcd-directly-with-a-raspberry-pi/wiring) for the wiring diagram, and the code to drive the LCD, and credit to [geodatasource](http://www.geodatasource.com/developers/perl) for their sample perl code I used to code this program.
- Credit to my friend and peer Jason Giberson for helping with testing and troubleshooting code. 

Requirements
------------
  - RaspberryPi available [here](http://www.amazon.com/RASPBERRY-MODEL-756-8308-Raspberry-Pi/dp/B009SQQF9C/ref=sr_1_1?ie=UTF8&qid=1404096520&sr=8-1&keywords=raspberry+pi)
  - USB GPS available [here](http://www.amazon.com/GlobalSat-BU-353-USB-GPS-Receiver/dp/B000PKX2KA/ref=sr_1_2?ie=UTF8&qid=1404094736&sr=8-2&keywords=usb+gps)
  - 1602 LCD screen available [here](http://www.amazon.com/microtivity-IM161-Module-White-Backlight/dp/B0059H60SK/ref=sr_1_1?ie=UTF8&qid=1404096445&sr=8-1&keywords=1602+lcd)
  - 16gb or larger SD card
  - Bread board 
  - Bread board jumper wires 
  - Male to female jumper wires - I recommend [these](http://www.amazon.com/Phantom-YoYo-dupont-cable-female/dp/B00A6SOGC4/ref=sr_1_1?ie=UTF8&qid=1404096663&sr=8-1&keywords=male+to+female+jumper+wire)
  - Possibly a soldering iron (Depends on the LCD, some come pre-soldered)
  - Potentiometer (Some LCD's come with one)
  - Ethernet Cable
  - A laptop with Linux on it
  - If you do not have a laptop, some sort of portable USB power for the Pi
  - SD card reader/writer

Setting up the Raspberry Pi
--------------------------
- Download the pre-built RaspberryPi image [here](https://drive.google.com/file/d/0B1QwSWI7WxfpeEpNaWZlZmxWX1E/edit?usp=sharing)
- Once that is downloaded (it may take a while) follow [this](http://elinux.org/RPi_Easy_SD_Card_Setup) guide on write the image to your SD card.
- While the use the wiring diagram provided by Adafruit to get the LCD up and running.
![Adafruit Wiring Diagram](https://learn.adafruit.com/system/assets/assets/000/001/729/medium800/raspberry_pi_pi-char-lcd.gif?1396775803 "Adafruit Wiring Diagram")

Connecting to the Raspberry Pi
------------------------------
- Enable network connection sharing on eth0 (This is different depending on what Linux OS you are running and network manager versions, but this should cover the basics of it)

- click on the network manager icon and select "Edit connections..."
 
![Connection Sharing](http://i.stack.imgur.com/0DrKe.png "Connection Sharing")
- Select your wired connection and click edit
 
![Connection Sharing](http://i.stack.imgur.com/NsSUr.png "Connection Sharing")
- Under the "IPV4 settings tab", select the "method" drop down list and choose "Shared to other Computers"
 
![Connection Sharing](http://i.stack.imgur.com/AoLa3.png "Connection Sharing")
 
- Insert the written SD card into the Pi and power it on
- Now connect a ethernet cable to you Pi and to your laptops Ethernet Port
- Open a terminal and cat dnsmasq.leases to find the Raspberry Pi's IP address
```sh 
cat /var/lib/misc/dnsmasq.leases 
```
- SSH into the Raspberry Pi (Replace the IP below with the IP you got from dnsmasq.leases)
```sh 
ssh pi@192.168.1.5
```
- Enter the username and password
- The default user name is 'pi' and the password is 'raspberry'
- Change Directories into /home/pi/RaspberryPi-Geocaching/
```sh 
cd /home/pi/RaspberryPi-Geocaching/ 
```
- Do a file listing 
```sh 
ls 
```
- geocaching.pl is the main perl script that will handle everything for you
- to use geocaching.pl takes two command line arguments, lat, and lon.
- Where lat is your latitude and lon is your longitude (both in decimal format)
```sh 
./geocaching.pl 42.2476899 -83.6225163
```

Your LCD should now be showing the distance to the Coordinates you provided. You can use this with traditional [Geocaches](geocaching.com) or make your own. unfortunately I have yet to be able to calculate the bearing to the coordinates based on location. So for now you with have to give yourself a rough bearing, and somewhat triangulate to it.


