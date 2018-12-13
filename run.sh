#!/usr/bin/env bash
unzip /storage/train_data/train_data.zip -d train_data
pip install torch
pip install torchvision
pip install dominate
pip install visdom
python train.py --dataroot ./train_data/train_data1 --name twilight_cyclegan --model cycle_gan --resize_or_crop scale_width_and_crop --loadSize 1024 --fineSize 360 --display_id 0 --checkpoints_dir /storage/checkpoints
zip -r  /artifacts/checkpoints.zip /storage/checkpoints

