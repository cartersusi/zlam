#! /bin/bash

CUDA_VISIBLE_DEVICES=0 WANDB_PROJECT=personal-code-copilot python train.py \
--model_name_or_path "meta-llama/Meta-Llama-3.1-8B-Instruct" \
--dataset_name "cartersusi/zig-llama" \
--splits "train" \
--max_seq_len 2048 \
--max_steps 2000 \
--save_steps 500 \
--eval_steps 100 \
--logging_steps 5 \
--log_level "info" \
--logging_strategy "steps" \
--evaluation_strategy "steps" \
--save_strategy "steps" \
--push_to_hub \
--hub_private_repo False \
--hub_strategy "every_save" \
--bf16 True \
--learning_rate 3e-4 \
--lr_scheduler_type "cosine" \
--weight_decay 0.1 \
--warmup_ratio 0.1 \
--max_grad_norm 1.0 \
--output_dir "cartersusi/zig-LLaMa" \
--per_device_train_batch_size 16 \
--per_device_eval_batch_size 16 \
--gradient_accumulation_steps 4 \
--gradient_checkpointing True \
--use_reentrant True \
--dataset_text_field "content" \
--test_size 0.1 \
--fim_rate 0.5 \
--fim_spm_rate 0.5 \
--use_peft_lora True \
--lora_r 32 \
--lora_alpha 64 \
--lora_dropout 0.1 \
--lora_target_modules "all-linear" \
--use_4bit_quantization True \
--use_nested_quant True \
--bnb_4bit_compute_dtype "bfloat16" \
--use_flash_attn True