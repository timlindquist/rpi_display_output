This code will is made and tested for the Raspberry Pi 3 but should work on any of the Pi's. 
The use is for Pi's that have a 7inch touch screen output device.
The code will select HDMI as the output if its available otherwise the other screen will work. 

steps to set it up on the pi
git clone https://github.com/timlindquist/rpi_display_output.git
get directory of rpi_display_output.sh
for me its /home/pi/rpi_display_output/display_output.sh
add permission to all users with
chmod 777 /home/pi/rpi_display_output/display_output.sh

now it is time to edit the boot script
sudo nano /etc/rc.local
before exit 0
add the path to the script
for me its /home/pi/rpi_display_output/display_output.sh
save and exit ^x y enter
