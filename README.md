# Module 15 Challenge: MechaCar Statistical Analysis

## Purpose:
The purpose of this analysis is to figure out the factors that are causing production troubles for a car manufacturing company's (AutosRUs) newest prototype, the MechaCar. In order to figure out these issues, I used the coding language R to perform robust statistical analysis on the company's given data sets for the MechaCar. Additionally, I designed a statistical study to compare vehicle performance of the MechaCar vehicles against vechicles from other manufacturers to evaluate whether the MechaCar was a viable competitor in the car-buying market.
---
## Linear Regression to Predict MPG
![Deliverable_1](https://github.com/mbroad1/Module-15-MechaCar-Statistical-Analysis/blob/main/Images/Deliverable_1.png)
**- Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?**
  - The coefficients that provided a non-random amount of variance to the mpg values were the intercept with **5.08e-08**, vehicle length with **2.60e-12**, and ground clearance **5.21e-08**.

**- Is the slope of the linear model considered to be zero? Why or why not?**
  - The slope of the linear model is **not** considered to be zero because the p-value is statistically significant, **5.35e-11**, which means the statistical analysis failed to reject the null hypothesis, and thus the slope of this model cannot equal zero.

**- Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?**
  - Since the p-value of this analysis is very statistically significant, it means that this linear model is reliable in predicting mpg for the MechaCar prototypes in an effective manner. Likewise, the R-squared value of **0.6825** is high, which means the regression model fits our observations well. However, 3/6 variables (vehicle weight, spoiler angle, and AWD) have insignificant probabilities, which may indicate that this model is overfitted, and thus it may not be able to be used for other data sets since it cannot generalize.

---
## Summary Statistics on Suspension Coils
### Total Summary:
![Deliverable_2_Total_Summary](https://github.com/mbroad1/Module-15-MechaCar-Statistical-Analysis/blob/main/Images/Deliverable_2_Total_Summary.png)
### Lot Summary:
![Deliverable_2_Lot_Summary](https://github.com/mbroad1/Module-15-MechaCar-Statistical-Analysis/blob/main/Images/Deliverable_2_Lot_Summary.png)
**- The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?**
  - For all manufacturing lots in total, the variance of the MechaCar's suspension coils is about **62.3**, which is less than 100 PSI.
  - For manufacturing lots 1 and 2, the variances of the suspension coils were about **1.0** and **7.5**, respectively, and thus both are significantly lesss than 100 PSI.
    - However, lot 3 had a variance of the suspension coils that was about **170.3** PSI, and thus the MechaCars in this lot do **not** meet the design specification of less than 100 PSI.
