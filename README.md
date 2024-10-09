# 5th place solution (Ahmed El Fazouani's part)
Below you can find an outline of how to reproduce my part of solution for the RSNA 2024 Lumbar Spine Degenerative Classification.
## Requirements
- NVIDIA GeForce RTX 3090 + AMD EPYC 7302P 16-Core Processor
- Quadro RTX 8000 + Intel(R) Xeon(R) CPU E5-2698 v4 @ 2.20GHz
## Usage
### Prerequisites
- Download the [Competition data](https://www.kaggle.com/competitions/rsna-2024-lumbar-spine-degenerative-classification/data) in the `input` folder: 
- Add the csv files from this [public coordinates data](https://www.kaggle.com/datasets/brendanartley/lumbar-coordinate-pretraining-dataset) to the `input` folder:
### Training
#### stage 1
- sagittal_t1 : run the notebook stage1/kaggle_rsna_lsdc_stage1_train_sagittal.ipynb with CustomConfig.orientation =  'Sagittal T1'
- sagittal_t2 : run the same notebook stage1/kaggle_rsna_lsdc_stage1_train_sagittal.ipynb with the hyperparameter CustomConfig.orientation = 'Sagittal T2/STIR'
- axial_t2 : run the notebook stage1/kaggle_rsna_lsdc_stage1_train_axial.ipynb
- generation of coordinates from the trained models : stage1/kaggle_rsna_lsdc_stage1_test.ipynb

the output of the execution is saved in the `stage1` folder
#### stage 2
- pretrain : stage2/kaggle_rsna_lsdc_stage2_pretrain.ipynb, the output is saved in `stage2` folder.
- finetune : take the weights with the best test score from the pretraining phase, then use this notebook for finetuning : stage2/kaggle_rsna_lsdc_stage2_finetune.ipynb


