#!/usr/bin/env bash
wget https://storage.googleapis.com/mltechnicalanalysis/train_data.zip
unzip train_data.zip -d train_data
pip install torch
pip install torchvision
pip install dominate
pip install visdom
python train.py --dataroot ./train_data --name twilight_cyclegan --model cycle_gan --resize_or_crop scale_width_and_crop --loadSize 1024 --fineSize 360
python -m visdom.server

