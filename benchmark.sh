#!/bin/sh
rebench -d --scheduler=random --without-nice rebench.conf all

REV=`git rev-parse HEAD | cut -c1-8`
TARGET_PATH=~/benchmark-results/are-we-fast-yet/$REV
mkdir -p $TARGET_PATH
cp benchmark.data $TARGET_PATH/
