#!/bin/bash/

################################################################################
##################### Download the OpenCV source ###############################
################################################################################

cd ~
wget -O opencv.zip https://github.com/Itseez/opencv/archive/3.4.3.zip
unzip opencv.zip

wget -O opencv_contrib.zip https://github.com/Itseez/opencv_contrib/archive/3.4.3.zip
unzip opencv_contrib.zip

rm opencv.zip opencv_contrib.zip
