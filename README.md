# 5th place solution (@ahmedelfazouan's part)
Below you can find an outline of how to reproduce my part of the solution for the RSNA 2024 Lumbar Spine Degenerative Classification competition.
If you have any questions please contact me : elfazouaniah@gmail.com

More details about our solution and my teammate's part can be found [here](https://www.kaggle.com/competitions/rsna-2024-lumbar-spine-degenerative-classification/discussion/539472).
## Environment
```
pip install -r requirements.txt
```
## Usage
### Prerequisites
- Competition data
- Improved coordinates
```
mkdir input
cd input
. download.sh
```
### Training
#### stage 1
- sagittal_t1 : run the notebook stage1/kaggle_rsna_lsdc_stage1_train_sagittal.ipynb with CustomConfig.orientation =  'Sagittal T1'
- sagittal_t2 : run the same notebook stage1/kaggle_rsna_lsdc_stage1_train_sagittal.ipynb with the hyperparameter CustomConfig.orientation = 'Sagittal T2/STIR'
- axial_t2 : run the notebook stage1/kaggle_rsna_lsdc_stage1_train_axial.ipynb
- This notebook stage1/kaggle_rsna_lsdc_stage1_test.ipynb will generate coordinates that will be used after in stage2

the output of the execution is saved in the `stage1` folder, I saved the results of stage1 in this dataset [here](https://www.kaggle.com/datasets/ahmedelfazouan/stage1-rsna-effnet). 
#### stage 2
- pretrain : run this notebook stage2/kaggle_rsna_lsdc_stage2_pretrain.ipynb, the weights will be saved in `stage2` folder.
- finetune : take the weights with the best auc from the pretraining phase, then use this notebook for finetuning : stage2/kaggle_rsna_lsdc_stage2_finetune.ipynb
- Change CustomConfig.version to 2 and 3, and run the same pretraining and finetuning notebooks.
- Train another seed (2024) with the same setups on the three versions of the model, the best performing model for each fold will be chosed from the two seeds and will be used in inference.

The weights of stage 2 are saved in this dataset [here](https://www.kaggle.com/datasets/ahmedelfazouan/rsna-stage2-weights).

#### Inference notebook :
https://www.kaggle.com/ahmedelfazouan/rsna-inference

