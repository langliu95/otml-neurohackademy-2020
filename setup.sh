#!/bin/bash

# setup conda environment
conda env create -f otml_neuro.yml
source activate otml_neuro_test


# download and install latest OT package
echo -e "installing OT...\n"
pip install git+https://github.com/rflamary/POT.git


# download and install latest MTW package
echo -e "installing MTW...\n"
git clone https://github.com/hichamjanati/mtw.git
cd mtw/
pip install --no-deps -e .


# download and install latest groupmne package; optional, run it if running MEG_preprocessing.ipynb
# pip install -U https://api.github.com/repos/hichamjanati/groupmne/zipball/master
