accelerate launch -m lm_eval --model hf \
    --model_args pretrained=google-t5/t5-small  \
    --tasks scrolls_quality,scrolls_narrativeqa,scrolls_contractnli \
    --batch_size 8 \
    --trust_remote_code