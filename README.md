RasberryPi-Geocaching
=====================

- Perl/Python based code for Geocaching with a 1602 LCD and a RPi 
- This code is not entirely my work, some of the code 
- Credit to my friend and peer Jason Giberson for helping with testing and troubleshooting code. 

Requirements
  - RaspberryPi
  - USB GPS 
  - 1602 LCD screen
  - 16gb or larger SD card
  - Bread board jumper wires
  - Possibly a soldering iron (Depends on the LCD, some come pre-soldered)
  - Bread board
  - Potentiometer
  - Ethernet Cable
  - A laptop with Linux on it
  - If you do not have a laptop, some sort of portable USB power for the Pi
  - SD card reader/writer

Setting up the Raspberry Pi
- Download the pre built RaspberryPi image [here](google.com)


Connecting to the Raspberry Pi
- Enable network connection sharing on eth0
- Open a terminal and run "cat /var/lib/misc/dnsmasq.leases" to find the Raspberry Pi's IP adress
- SSH into the Raspberry Pi "ssh pi@<IP of Pi>"
- Enter the username and password
- The default user name is 'pi' and the password is 'raspberry'
