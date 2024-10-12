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
cd input
. download.sh
```
### Training
#### stage 1
- sagittal_t1 & sagittal_t2 : run the notebook kaggle_rsna_lsdc_stage1_train_sagittal.ipynb
- axial_t2 : run the notebook kaggle_rsna_lsdc_stage1_train_axial.ipynb
- generate coordinates : run the notebook kaggle_rsna_lsdc_stage1_test.ipynb

the output of the execution is saved in the `stage1` folder, I saved the results of stage1 in this dataset [here](https://www.kaggle.com/datasets/ahmedelfazouan/stage1-rsna-effnet). 
#### stage 2
- run this notebook kaggle_rsna_lsdc_stage2.ipynb

This notebook will pretrain and finetune three versions of the model for two seeds.

The weights of stage 2 are saved in this dataset [here](https://www.kaggle.com/datasets/ahmedelfazouan/rsna-stage2-weights).

#### Inference notebook :
https://www.kaggle.com/ahmedelfazouan/rsna-inference

