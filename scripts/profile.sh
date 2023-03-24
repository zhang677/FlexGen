OPT_PATH=/home/nfs_data/opt_weights_np
OFFLOAD_DIR=/home/nfs_data/zhanggh/FlexGen/flexgen_offload_dir
export TRANSFORMERS_CACHE=/home/nfs_data/zhanggh/.cache
export HF_HOME=/home/nfs_data/zhanggh/.cache/huggingface

CUDA_VISIBLE_DEVICES=1 python3 -m flexgen.flex_opt --model facebook/opt-1.3b --path $OPT_PATH --offload-dir $OFFLOAD_DIR \
  --prompt-len 256 --gen-len 32 --gpu-batch-size 4 --num-gpu-batches 16 \
  --percent 

 