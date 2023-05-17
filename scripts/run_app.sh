#!/bin/bash

CUDA_VISIBLE_DEVICES=0 accelerate launch --config_file configs/accelerator_singlegpu_config.yaml service/app.py \
    --model_name_or_path pinkmanlove/llama-7b-hf \
    --torch_dtype bfloat16 \
    --max_new_tokens 200
