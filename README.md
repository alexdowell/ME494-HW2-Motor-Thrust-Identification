# ME494 HW2: Motor Thrust Identification  

## Description  
This repository contains the second homework assignment for **ME494** on motor thrust system identification. The homework involves least squares estimation using data from a brushless motor and propeller, analyzing the effects of frequency sweeps and step inputs on model accuracy, and calculating confidence intervals for estimated parameters. The repository includes MATLAB scripts, datasets, and a PDF containing problem descriptions.  

## Files Included  

### **Part 1: Least Squares Estimation of Motor Thrust**  
- **File:** SID_HW2.m  
- **File:** MotorData.mat  
- **Topics Covered:**  
  - Linear regression for thrust estimation  
  - Least squares parameter identification  
  - Confidence interval calculation  
  - Plotting measured vs. modeled force  

### **Part 2: Model Validation with Step Input Data**  
- **File:** MotorData_Verify.mat  
- **Topics Covered:**  
  - Applying estimated model to validation dataset  
  - Comparing model predictions against measured thrust  
  - Assessing model accuracy for different input conditions  

### **Part 3: Residual and Statistical Analysis**  
- **File:** deriv.m  
- **Topics Covered:**  
  - Smoothed numerical differentiation for noisy signals  
  - Residual analysis to evaluate model performance  
  - Histogram and scatter plot visualization of residuals  

### **Homework Assignment Document**  
- **File:** SID_HW2_2022.pdf  
- **Contents:**  
  - Problem descriptions and equations  
  - MATLAB implementation steps  
  - Expected results and discussion points  

## Installation  
Ensure MATLAB is installed before running the scripts. No additional toolboxes are required.  

## Usage  

### **Running the Motor Thrust Estimation**  
1. Open MATLAB.  
2. Load `MotorData.mat` into the workspace.  
3. Run the script:  
   ```SID_HW2```  
4. View the estimated parameters and the plotted force comparison.  

### **Validating the Model with Step Input Data**  
1. Open MATLAB.  
2. Load `MotorData_Verify.mat` into the workspace.  
3. Run the script:  
   ```SID_HW2```  
4. Analyze how well the model generalizes to new data.  

### **Performing Residual Analysis**  
1. Open MATLAB.  
2. Run the script:  
   ```SID_HW2```  
3. Observe residuals over time and against predicted thrust.  

## Example Output  

- **Motor Thrust Estimation**  
  - Estimated Parameters: `[A, B, C]` values computed using least squares  
  - Comparison plot of measured vs. modeled force  

- **Residual Analysis**  
  - Time series residual plot showing deviations  
  - Histogram of residuals highlighting distribution  

- **Model Validation on Step Input Data**  
  - Comparison plot of measured vs. modeled force for validation set  
  - R-squared calculation for model accuracy assessment  

## Contributions  
This repository is intended for academic research and educational use. Contributions and modifications are welcome.  

## License  
This project is open for research and educational purposes.  

---  
**Author:** Alexander Dowell  

