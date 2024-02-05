# MMCC train script for Market1501
CUDA_VISIBLE_DEVICES=0,1 python -u examples/mmcc_train_usl.py \
-b 128 \
-a resnet50 \
-d market1501 \
--iters 500 \
--momentum 0.1 \
--eps 0.45 \
--num-instances 16 \
--logs-dir ../logs/MMCC_Market1501/ \
--data-dir ../data/ \
--step-size 20 \
--epochs 50 \
--save-step 1 \
--eval-step 1 \
