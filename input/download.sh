#!/bin/sh

echo 'download competition data...'
kaggle competitions download -c rsna-2024-lumbar-spine-degenerative-classification
unzip -q rsna-2024-lumbar-spine-degenerative-classification.zip -d .
rm -r rsna-2024-lumbar-spine-degenerative-classification.zip

echo 'download improved coordinates ...'
kaggle datasets download -d brendanartley/lumbar-coordinate-pretraining-dataset -f coords_pretrain.csv
unzip coords_pretrain.csv.zip -d .
rm coords_pretrain.csv.zip