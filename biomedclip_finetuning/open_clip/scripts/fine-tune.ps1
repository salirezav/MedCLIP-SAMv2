Set-Location biomedclip_finetuning/open_clip/src

CUDA_VISIBLE_DEVICES=0 python3 -m open_clip_train.main `
    --batch-size 8 `
    --workers 4 `
    --report-to tensorboard `
    --save-frequency 1 `
    --logs="logs" `
    --dataset-type csv `
    --csv-separator="," `
    --train-data ./data/cilia_and_cell/cilia_and_cell.csv `
    --csv-img-key image_path `
    --csv-caption-key caption `
    --lr=1e-3 `
    --wd=0.1 `
    --warmup 1000 `
    --epochs=32 `
    --model hf-hub:microsoft/BiomedCLIP-PubMedBERT_256-vit_base_patch16_224 `
    --dhnnce-loss `
    --temperature-dhnnce 0.6 `
    --alpha-dhnnce 0.0 `
    --beta1-dhnnce 0.15 `
    --beta2-dhnnce 0.15






# 64k batchsize for 2.048e-3 lr
# $env:TORCH_CUDNN_V8_API_ENABLED = 1
# torchrun --nproc_per_node 8 -m open_clip_train.main `
#     --save-frequency 1 `
#     --save-most-recent `
#     --zeroshot-frequency 1 `
#     --train-data '/path/to/laion' `
#     --dataset-type webdataset `
#     --lr "2.048e-3" `
#     --beta1 0.9 `
#     --beta2 0.95 `
#     --warmup 782 `
#     --wd 0.2 `
#     --batch-size 4096 `
#     --aug-cfg scale='(0.4, 1.0)' color_jitter='(0.32, 0.32, 0.32, 0.08)' color_jitter_prob=0.8 gray_scale_prob=0.2 `
#     --epochs=7 `
#     --workers=6 `
#     --model ViT-H-14-CL32-GAP `
#     --precision 'amp_bf16' `
#     --local-loss `
#     --gather-with-grad `
#     --force-image-size 224 `
#     --grad-checkpointing `
#     --log-every-n-steps 32 `
#     --seed 0 `
#     --logs ./logs/ `
#     --imagenet-val '/path/to/ImageNet/val' `
#     --name 'name' `
#     --report-to "wandb" `
#     --wandb-project-name "project_name"



