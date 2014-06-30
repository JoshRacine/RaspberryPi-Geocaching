RasberryPi-Geocaching
=====================

- Perl/Python based code for Geocaching with a 1602 LCD and a RPi 
- This code is not entirely my work, some of the code 
- Credit to my friend and peer Jason Giberson for helping with testing and troubleshooting code. 

Requirements
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
- Download the pre built RaspberryPi image [here]()


Connecting to the Raspberry Pi
- Enable network connection sharing on eth0
- Open a terminal and run "cat /var/lib/misc/dnsmasq.leases" to find the Raspberry Pi's IP address
- SSH into the Raspberry Pi "ssh pi@<IP of Pi>"
- Enter the username and password
- The default user name is 'pi' and the password is 'raspberry'
