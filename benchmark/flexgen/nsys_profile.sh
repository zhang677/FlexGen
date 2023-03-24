NAME=1b3_1x1_single
NSYS_FILE=$(date +'%H:%M:%S')
echo $NSYS_FILE
CUDA_VISIBLE_DEVICES=3 /home/eva_share/opt/cuda-11.6/bin/nsys profile -o /home/nfs_data/zhanggh/FlexGen/benchmark/flexgen/reports/$NSYS_FILE --force-overwrite true python3 /home/nfs_data/zhanggh/FlexGen/benchmark/flexgen/bench_suite.py $NAME