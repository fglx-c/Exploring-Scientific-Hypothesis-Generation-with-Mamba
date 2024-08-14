HOME=$PWD python -m torch.distributed.run \
    --nproc_per_node=4 \
    trainer_lm.py \
    --model state-spaces/mamba-790m-hf \
    --batch_size 8 \
    --valid_batch_size 16 \
    --beam_size 10 \
    --neg_num 2 \
    --dataset_dir local_context_dataset \
    --lr 6e-6 \
    --output mamba-790m-hf_checkpoint \
    --distributed \
    --epochs 10 "$@"