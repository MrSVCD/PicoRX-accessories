#!/bin/bash
openscad -D Screw=1.5 PicoHolderScrew.scad -o PicoHolderScrew1.5mm.stl
openscad -D Screw=1 PicoHolderScrew.scad -o PicoHolderScrew1mm.stl
openscad -D Screw=1.9 PicoHolderScrew.scad -o PicoHolderScrewM2.stl
openscad PicoHolderMelt.scad -o PicoHolderMelt.stl

