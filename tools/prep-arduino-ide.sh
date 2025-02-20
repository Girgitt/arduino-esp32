#!/bin/bash

pip install pyserial
wget -O arduino.tar.xz https://www.arduino.cc/download.php?f=/arduino-nightly-linux64.tar.xz
tar xf arduino.tar.xz
mv arduino-nightly $HOME/arduino_ide
mkdir -p $HOME/Arduino/libraries

cd $HOME/arduino_ide/hardware
mkdir espressif
cd espressif
ln -s $TRAVIS_BUILD_DIR esp32
cd esp32/tools
python get.py
