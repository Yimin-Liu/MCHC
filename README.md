# MMCC
A new unsupervised person re-identification method is coming...

## 1. Introduction

## 2. Instillation
- Python 3.7.8
- Pytorch 1.2.0
- Torchvision 0.4.0
- Faiss-gpu 1.6.4
- Please refer to `setup.py` for the other packages with the corresponding versions.

## 3. Preparation
1. Run `git clone https://github.com/Yimin-Liu/MMCC.git`
2. Prepare Datasets

---

Download the datasets Market-1501,MSMT17,DukeMTMC-reID from this [link](https://drive.google.com/file/d/19oWiYGjTgouFMK_psZvH8ysDGQ1KUbk-/view?usp=sharing) and unzip them under the directory like:

    HHCL-ReID/examples/data
    ├── market1501
    │   └── Market-1501-v15.09.15
    │       └── bounding_box_train
    │       └── bounding_box_test
    │       └── query
    └── msmt17
    │   └── MSMT17_V1
    │       └── bounding_box_train
    │       └── bounding_box_test
    │       └── query

Prepare ImageNet Pre-trained Models for IBN-Net

When training with the backbone of [IBN-ResNet](https://arxiv.org/abs/1807.09441), you need to download the ImageNet-pretrained model from this [link](https://drive.google.com/drive/folders/1thS2B8UOSBi_cJX6zRy6YYRwz_nVFI_S) and save it under the path of `examples/pretrained/`.

```
HHCL-ReID/examples
└── pretrained
    └── resnet50_ibn_a.pth.tar
```
## 4. Train
You can directly run `MMCL_*.sh ` file for the transferring training process.

```
sh MMCL_train_market1501.sh  ### for Market1501
sh MMCL_train_msmt17.sh  ### for MSMT17
```
## 5. Test

You can simply run `test_*.sh ` file for the transferring testing process.

```
sh MMCL_test_market1501.sh  ### for Market1501
sh MMCL_test_msmt17.sh  ### for MSMT17
```

## 6. References
[1] Our code is conducted based on [ClusterContrast](https://github.com/alibaba/cluster-contrast-reid) and [ISE](https://github.com/zhangxinyu-xyz/ISE-ReID.git).

<a name='8'></a>
