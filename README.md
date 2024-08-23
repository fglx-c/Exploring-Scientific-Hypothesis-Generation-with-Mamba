# Exploring Scientific Hypothesis Generation with Mamba

* [Overview](#overview)
  
* [Requirements](#requirements)
  
* [Quickstart](#quickstart)

## Requirements

### Environment 

* Python 3.8.5

### Environment Setup Instructions for NLP

To set up the environment for this repository, please follow the steps below:

Step 1: Create a Python environment (optional)
If you wish to use a specific Python environment, you can create one using the following:

```bash
conda create -n pyt1.11 python=3.8.5
```

Step 2: Install PyTorch with CUDA (optional)
If you want to use PyTorch with CUDA support, you can install it using the following:

```bash
conda install pytorch==1.11 torchvision torchaudio cudatoolkit=11.3 -c pytorch
```

Step 3: Install Python dependencies
To install the required Python dependencies, run the following command:

```bash
pip install -r requirements.txt
```

### Data Setup

1. Unzip all the zip files located in the data folder, including its subfolders.
2. Place the following folders, extracted from their respective zip files, under the data folder: `kg`,`ct`, and `gold_subset`
3. Locate the `local_context_dataset` folder unzipped from `data/local_context_dataset.zip`. Move it to `models/T5` and `models/Mamba`.
4. Copy the file `e2t.json` and paste it into the following folders:   `models\GPT*\`, `models\Iterative\`, and `preprocess\`
  
### Data Preprocess

1. Navigate to the `preprocess` and run the `bash preprocess.sh`
2. Navigate to the `models\GPTFS` and run `process.py`

### Data and Code Description

The project data includes the following components:

1. `data/local_context_dataset.zip`: This folder contains the training, validation, and testing files for our task.
2. `data/kg/*.json`: The `data/kg` directory contains files that store the original Information Extraction (IE) results for all paper abstracts.
3. `data/ct/*.csv`: The `data/ct` directory contains files that represent the citation network for all papers.
4. `data/gold_subset`: This directory contains our gold annotation subsets.
5. `data/biomedical.zip`: This directory contains our biochemical datasets.
6. `evaluation` contains sample evaluation code.


## Quickstart for NLP domain

Set up environment first:

```bash
conda activate pyt1.11
```

### Quick Guide

To test auto evaluation, follow the steps:

```bash
git clone https://github.com/EleutherAI/lm-evaluation-harness
cd lm-evaluation-harness
pip install -e .
```

Then, go to `models\T5\Auto_Scripts` and run the following command:

```bash
bash T5-large.sh 
```
The same works for other T5 and Mamba models.

We can get GPT4 results using the following command:

```bash
python gpt4.py
```

After getting GPT4 results, first copy all GPT4 results under the `iterative` folder, you can then run the first two iterations of iterative novelty boosting by running the following command: 

```bash
python calculate_sim.py
python gpt4_iter1.py
python calculate_sim1.py
python gpt4_iter2.py
```

To train the T5 model under `models\T5*`, run the following command:

```bash
bash finetune_*.sh 
```

To test the T5 model under `models\T5*`, run the following command:

```bash
bash eval_*.sh 
```
