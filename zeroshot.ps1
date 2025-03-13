python saliency_maps/generate_saliency_maps.py `
--input-path saliency_maps/cilia_dataset_split/train_images `
--output-path saliency_maps/saliency_map_outputs/cilia_dataset_split/masks `
--val-path saliency_maps/cilia_dataset_split/val_images `
--model-name BiomedCLIP `
--finetuned `
--hyper-opt `
--val-path saliency_maps/cilia_dataset_split/val_images



python postprocessing/postprocess_saliency_maps.py `
--input-path saliency_maps/cilia_dataset_split/images `
--output-path coarse_outputs/cilia_dataset_split/masks `
--sal-path saliency_maps/saliency_map_outputs/cilia_dataset_split/masks `
--postprocess kmeans `
--filter


python segment-anything/prompt_sam.py `
--input saliency_maps/cilia_dataset_split/train_images `
--mask-input coarse_outputs/cilia_dataset_split/masks `
--output sam_outputs/cilia_dataset_split/masks `
--model-type vit_h `
--checkpoint segment-anything/sam_vit_h_4b8939.pth `
--prompts boxes 