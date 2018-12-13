#!/bin/bash
wget https://storage.googleapis.com/mltechnicalanalysis/train_data.zip
unzip train_data.zip -d train_data
pip3 install torch
pip3 install torchvision
pip3 install dominate
pip3 install visdom
python3 !python3 train.py --dataroot ./train_data --name twilight_cyclegan --model cycle_gan --resize_or_crop scale_width_and_crop --loadSize 1024 --fineSize 360

