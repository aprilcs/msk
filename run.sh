#!/bin/bash

python fig1_happiness_of_individuals.py
python fig2_distribution_of_happiness.py

pip freeze > ../results/requirements.txt
# conda list --export > ../results/requirements.txt

jupyter nbconvert \
  --ExecutePreprocessor.allow_errors=True \
  --ExecutePreprocessor.timeout=-1 \
  --FilesWriter.build_directory=../results \
  --execute candy_trade.ipynb