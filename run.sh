#!/usr/bin/env bash
pip install torch
pip install torchvision
pip install dominate
pip install visdom
python train.py --dataroot /storage/flambient_data --name flambient_cyclegan --model cycle_gan --resize_or_crop scale_width_and_crop --loadSize 1024 --fineSize 360 --display_id 0 --checkpoints_dir /storage/flambient_chk
zip -r  /artifacts/checkpoints.zip /storage/checkpoints

