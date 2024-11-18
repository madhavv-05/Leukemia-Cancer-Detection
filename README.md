# Leukemia-Cancer-Detection

This repository contains the code, methodology, and evaluation for a project aimed at automating leukemia detection in blood smear images using digital image processing (DIP) techniques. The project is based on the research paper "Leukemia Detection using Digital Image Processing Techniques" by Himali P. Vaghela et al. 


## Index
1. [Introduction and Abstract](#1-introduction-and-abstract)  
2. [Implementation of the Research Paper Idea](#2-implementation-of-the-research-paper-idea)  
3. [Problem Statement](#3-problem-statement)  
4. [Challenges](#4-challenges)    
5. [Conclusion](#8-conclusion)  
 

---

## 1. Introduction and Abstract
Leukemia, a blood cancer caused by abnormal white blood cell (WBC) growth, disrupts immune system functionality. Traditional diagnostic methods are prone to human error and time inefficiency. Digital Image Processing (DIP) offers a solution by automating the detection of leukemic cells in microscopic blood images.  

This project applies DIP techniques like segmentation, morphological operations, and feature extraction to detect and count leukemic blast cells, providing early-stage detection and improving diagnostic accuracy.

---

## 2. Implementation of the Research Paper Idea
The implementation is inspired by the research paper's methods, integrating:
- **Preprocessing**: Converting images to grayscale and noise reduction.  
- **Segmentation**: Thresholding to isolate cells.  
- **Feature Extraction**: Identifying cell shapes and sizes using circle detection.  
- **Morphological Operations**: Refining cell boundaries for accurate counting.  

---

## 3. Problem Statement
Manual leukemia diagnosis is slow, error-prone, and requires expert hematologists. This project automates the detection of abnormal leukemic cells in blood smear images to improve diagnostic speed and reliability.

---

## 4. Challenges
Key challenges include:  
1. Variability in blood smear image quality.  
2. Overlapping cells complicating segmentation.  
3. Noise and artifacts in blood images.  
4. Computational complexity of advanced algorithms.  
5. Detecting subtle early-stage leukemia markers.

---

## 5. Conclusion
This project successfully demonstrates the application of DIP techniques in automating leukemia detection. With an overall accuracy of 94%, the system shows promise for clinical applications. Future work may focus on improving early-stage detection and handling more diverse datasets.

