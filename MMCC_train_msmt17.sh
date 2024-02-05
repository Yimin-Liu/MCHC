# MMCC train script for MSMT17
CUDA_VISIBLE_DEVICES=0,1 python -u examples/mmcc_train_usl.py \
-b 128 \
-a resnet50 \
-d msmt \
--iters 500 \
--momentum 0.1 \
--eps 0.7 \
--num-instances 16 \
--logs-dir ../logs/MMCC_MSMT17/ \
--data-dir ../data/ \
--step-size 20 \
--epochs 50 \
--save-step 1 \
--eval-step 1 \
