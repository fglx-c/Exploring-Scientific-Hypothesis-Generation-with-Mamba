accelerate launch -m lm_eval --model hf \
    --model_args pretrained=state-spaces/mamba-370m-hf  \
    --tasks scrolls_quality,scrolls_narrativeqa,scrolls_contractnli \
    --batch_size 8 \
    --trust_remote_code