![poster1curvedlatest-1](https://github.com/user-attachments/assets/c8e8c936-ed64-4b49-84c7-faf6602b2b36)

# MEG-Based-Classification-of-Mild-Cognitive-Impairment-in-a-Passive-Audiovisual-Task
This repository contains the implementation and results of my research project on the classification of Mild Cognitive Impairment (MCI) using Magnetoencephalography (MEG) data. The study explores novel machine learning approaches to detect cognitive impairments in MCI patients by leveraging evoked potential p50 responses to paired auditory stimuli.
## Objectives

- Characterize attentional impairments in MCI patients using MEG data.
- Develop machine learning models to:
  1. Classify resting and task states in healthy individuals and MCI patients.
  2. Detect anomalies indicative of MCI across experimental conditions.

## Experimental Design

- **Participants**: 
  - 16 healthy controls
  - 5 MCI patients
- **Data Acquisition**: MEG signals recorded under four experimental conditions:
  - Eyes Closed
  - Eyes Open
  - 1st Auditory Click
  - 2nd Auditory Click
- **Data Preprocessing**:
  - Temporal filtering
  - Demeaning
  - Artifact correction
- **Feature Extraction**:
  - Power Spectral Density (PSD)
  - Event-Related Potentials (ERPs)

## Methodology
<p align="center">
  <img src="methodology diagram.png" alt="Description of the image" width="500">
</p>

### Channel Selection
- Iterative techniques identified optimal subsets for distinguishing features across conditions.

### Machine Learning Models
1. **Binary Classification**:
   - Model: Random Forest Classifier
   - Task: Distinguish resting state from task state in healthy and MCI participants.
2. **Anomaly Detection**:
   - Model: One-Class SVM
   - Task: Detect anomalies indicative of MCI under different conditions.

### Tools and Techniques
- **Preprocessing**: MATLAB FieldTrip toolbox
- **Feature Engineering**: MNE-Python
- **Model Development**: Scikit-learn
- **Validation**: Permutative Leave-One-Out Cross Validation

## Results

- **Binary Classification**:
  - Healthy subjects: High accuracy (94%)
  - MCI subjects: Moderate accuracy due to variability in cognitive impairments.
- **Anomaly Detection**:
  - Best results achieved during task-related conditions (Eyes Open, 1st Click, 2nd Click).
- Insights: Task-induced neural activity provides discriminative features for identifying cognitive impairments.

## Key Contributions

- Developed a novel MEG-based pipeline for MCI classification and anomaly detection.
- Identified neuromarkers associated with attentional impairments using machine learning.
- Laid groundwork for early diagnostic strategies for cognitive disorders.


## Future Work

- Incorporate multimodal neuroimaging data (e.g., fMRI, EEG) for comprehensive analyses.
- Develop deep learning models to improve feature selection and classification performance.
- Validate the pipeline on larger clinical cohorts.

## Citation

If you use this code or data in your research, please cite:
```
@article{wadhwa2025mci,
  title={MEG-Based Classification of Mild Cognitive Impairment in a Passive Audiovisual Task},
  author={Stuti Wadhwa},
  year={2025}
}
