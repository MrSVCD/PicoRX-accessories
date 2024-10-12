**Revision 0**

# Proposal for external I2C connector
[![](https://github.com/MrSVCD/PicoRX-accessories/blob/main/I2C/External%20I2C%20proposal-thumb.png)](https://github.com/MrSVCD/PicoRX-accessories/blob/main/I2C/External%20I2C%20proposal-2.png)

This is my proposal for a external connector for I2C traffic for use with keypads and other control surfaces.
## Mecanical
The connector is a IDC 6 pin (2x3 pin) connector. Male on the peripherals and radio and Female on the cable. The layout is as shown above.

## Electrical
The power supplied is +3.3v and at minimum 100mA and is supplied between pin +3.3v and GND.

SDA and SCL is pulled up to +3.3v and are the standard I2C pins.

INT is also pulled up to +3.3v and is used to send a interrupt to the RPi Pico so it knows to scan the I2C bus for data.

PWR is not yet defined. Three options comes to mind:
1. Power directly from the battery at max 5v.
2. Power directly from the battery at max 15v.
3. Remote power switch for the radio.

I am currently leaning towards option 2 with details to be hammered out.
## Software
This chapter is of the spec is the part that I need most help with.
Here I would define what different addresses/peripherals do and how.
### Peripheral wish list
* Keypad for typing frequencies.
* Remote control with encoder, buttons and display and seen on car mounted ham radios.
