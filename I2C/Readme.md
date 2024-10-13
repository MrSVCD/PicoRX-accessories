**Revision 0.2**

# Proposal for external I2C connector
[![](https://github.com/MrSVCD/PicoRX-accessories/blob/main/I2C/External%20I2C%20proposal-thumb.png)](https://github.com/MrSVCD/PicoRX-accessories/blob/main/I2C/External%20I2C%20proposal-2.png)

This is my proposal for a external connector for I2C traffic for use with keypads and other control surfaces.
## Mechanical
The connector is a IDC 6 pin (2x3 pin) connector. Male on the peripherals and radio and Female on the cable. The layout is as shown above.

## Electrical
The power supplied is +3.3v and at minimum 100mA and is supplied between pin +3.3v and GND.

SDA and SCL is pulled up to +3.3v and are the standard I2C pins.

INT is also pulled up to +3.3v and is used to send a interrupt to the RPi Pico so it knows to scan the I2C bus for data.

PWR is not yet defined. Three options comes to mind:
1. Power directly from the battery at max 5v.
2. Power directly from the battery at max 15v.
3. Remote power switch for the radio.
4. **Leave it unconected.**

I am currently leaning towards option 4 since the cable is too weak for serius power deliverly and implementing a remote power switch seems too hard.

## Software
This chapter is of the spec is the part that I need most help with.
Here I would define what different addresses/peripherals do and how.

### Peripheral wish list
* Keypad for typing frequencies.
* Remote control with encoder, buttons and display and seen on car mounted ham radios.

#### "Mouse"
While PicoRX has no use for a mouse, The PS2 definition of the mouse protocol would be easy to adapt to our needs. In the [Wikipedia articel](https://en.wikipedia.org/w/index.php?title=Computer_mouse&oldid=1250755620#PS/2_interface_and_protocol) on the subject, the 3 byte data-gram would be easy to adapt for PicoRX use. Using the X axis for the rotary controller and the Y axis for the volume. Left Button and Right Button is self explanatory and Middle button as the rotary encoder switch. If Y axis is for volume then it should be a absolute value and not a relative value.
