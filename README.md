# Alumni Donation Prediction Using Linear Regression

## Introduction:
Alumni donations are an important source of revenue for colleges and universities. If administrators could determine the factors that influence increases in the percentage of alumni who make a donation, they might be able to implement policies that could lead to increased revenues. Research shows that students who are more satisfied with their contact with teachers are more likely to graduate. As a result, one might suspect that smaller class sizes and lower student-faculty ratios might lead to a higher percentage of satisfied graduates, which in turn might lead to increases in the percentage of alumni who make a donation. 

## Data:
The attached data alumni.xls shows data for 48 national universities (America’s Best Colleges, Year 2000 Edition). The column labeled % of Classes Under 20 shows the percentage of classes offered with fewer than 20 students. The column labeled Student/Faculty Ratio is the number of students enrolled divided by the total number of faculty. Finally, the column labeled Alumni Giving Rate is the percentage of alumni that made a donation to the university

**Software used: R, RStudio

## Concepts implemented:
The following concepts were implemented during the course of the projects:

* Linear Regression
* Variable Selection
* Feature Engineering
* Outlier Analysis
* Residual Diagnostics
* Model Validation

## Conclusion:
Final model*: Y = 53.0138 – 2.0572X3 
Interpretation: According to this model, we see that every unit increase in X3 (Student_Faculty_Ratio) decreases the Alumni Giving Rate by 2.0572. Also, at Student Faculty Ratio of zero (given zero is in the scope of the model), the Alumni Giving Rate will be 53.0138.
