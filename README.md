# Module 15 Challenge: MechaCar Statistical Analysis

## Purpose:
The purpose of this analysis is to figure out the factors that are causing production troubles for a car manufacturing company's (AutosRUs) newest prototype, the MechaCar. In order to figure out these issues, I used the coding language R to perform robust statistical analysis on the company's given data sets for the MechaCar. Additionally, I designed a statistical study to compare the safety performance of the MechaCar vehicles against vechicles from other manufacturers to evaluate whether the MechaCar is a viable competitor in the car-buying market.
---
## Linear Regression to Predict MPG
![Deliverable_1](https://github.com/mbroad1/Module-15-MechaCar-Statistical-Analysis/blob/main/Images/Deliverable_1.png)

**- Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?**
  - The coefficients that provided a non-random amount of variance to the mpg values were the intercept with **5.08e-08**, the vehicle length with **2.60e-12**, and the ground clearance with **5.21e-08**.

**- Is the slope of the linear model considered to be zero? Why or why not?**
  - The slope of the linear model is **not** considered to be zero because the p-value is statistically significant, **5.35e-11**, which means the statistical analysis failed to reject the null hypothesis, and thus the slope of this model cannot equal zero.

**- Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?**
  - Since the p-value of this analysis is very statistically significant, it means that this linear model is reliable in predicting mpg for the MechaCar prototypes in an effective manner. Likewise, the R-squared value of **0.6825** is high, which means the regression model fits our observations well. However, three out of the six variables (vehicle weight, spoiler angle, and AWD) have insignificant probabilities, which may indicate that this model is overfitted, and thus it may not be able to be used for other data sets since it cannot generalize.

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

---
## T-Tests on Suspension Coils
### Is the PSI Across All Manufacturing Lots Statistically Different from the Population Mean, 1500 PSI?
![All_Lots](https://github.com/mbroad1/Module-15-MechaCar-Statistical-Analysis/blob/main/Images/Deliverable_3_AllLots.png)
- The p-value of this t-test is about **0.06** which means it almost reached statistical significance; however, since it is not less than the 0.05 threshold, we can conclude that the PSI across all manufacturing lots are **not** statistically different from the population mean of 1500 PSI.
- This result is a positive result because a car manufacturing company would not want their cars to differ significantly from the expected mean.
  - The fact that the average PSI across all lots is no different from the population mean of 1500 PSI means that there is consistency in the manufacturing of these cars. 
### Is the PSI for Lot 1 Statistically Different from the Population Mean?
![Lot_1](https://github.com/mbroad1/Module-15-MechaCar-Statistical-Analysis/blob/main/Images/Deliverable_3_Lot1.png)
- The p-value of this t-test is **1**; therefore, the PSI of lot 1 is **not** statistically different from the population mean since it is greater than 0.05.
  - Therefore, the manufacturing process of lot 1 is consistent since the average PSI of the cars in lot 1 do not differ significantly from the expected population mean of 1500 PSI. 
### Is the PSI for Lot 2 Statistically Different from the Population Mean?
![Lot_2](https://github.com/mbroad1/Module-15-MechaCar-Statistical-Analysis/blob/main/Images/Deliverable_3_Lot2.png)
- The p-value of this t-test is about **0.6**; therefore, the PSI of lot 2 is **not** statistically different from the population mean since it is greater than 0.05.
  - Therefore, the manufacturing process of lot 2 is consistent since the average PSI of the cars in lot 2 do not differ significantly from the expected population mean of 1500 PSI. 
### Is the PSI for Lot 3 Statistically Different from the Population Mean?
![Lot_3](https://github.com/mbroad1/Module-15-MechaCar-Statistical-Analysis/blob/main/Images/Deliverable_3_Lot3.png)
- The p-value of this t-test is about **0.04**; therefore, the PSI of lot 3 **is** statistically different from the population mean since its p-value is less than the 0.05 threshold.
  - Therefore, the manufacturing process of lot 3 is **not** consistent since the average PSI of the cars in lot 3 differ significantly from the population mean of 1500 PSI.
  - Due to this significant difference, any potential production changes that occurred in lot 3 that did not occur in lots 1 and 2 should be evaluated to avoid this production mishap in the future.
  - Likewise, the PSI for each car in lot 3 should be evaluated to see whether there are significant differences in the PSI from car to car in lot 3.

---
## Study Design: MechaCar vs Competition
One of the most important (if not, the most important) aspect when purchasing a car is whether the car is safe or not. AutosRUs always aims for customer satisfaction and to ensure that their buyers are receiving the safest cars to drive on the road.

In order to determine how MechaCar's safety compares to other competitors' safety, a statistical study can be performed to measure safety as a metric. The **null hypothesis** of this study would be the safety of the Mechacar does not differ significantly from the safety of other competitor vehicles. The **alternative hypothesis** of this study would be the safety of the Mechacar does differ significantly from the safety of other competitor vehicles.

The safety of the cars can be rated on an ordinal scale where **1 is the least safe** and **5 is extremely safe**. Since safety rating is a categorical variable, the statistical test that would be used for this analysis is a **chi-squared test** since a chi-squared test evaluates whether there is a difference in frequency in a categorical variable among different groups.

In order to perform this study, AutosRUs needs to hire an unbiased, outside team to evaluate and rate the safety of each MechaCar produced. Likewise, this same unbiased team will collect safety rating data from fellow competitors, and if necessary, normalize these safety ratings to the AutosRUs safety rating metric if other vehicle competitors use different metrics to evaluate safety. In order to interpret significant findings from this study, an equal number of cars from each competitor including the MechaCar from AutosRUs should be evaluated for this study, and ideally, there should be at least 100 or more vehicles from each competitor including the MechaCar in order to properly evaluate and have confidence in the study's results as bigger sample sizes will make AutosRUs more confident in interpreting their study's results. Hopefully, the safety rating of MechaCar is significantly different from the safety rating of other competitors (in the sense that it rates higher in safety than other cars) so that AutosRUs can advertise that their MechaCar is statistically the safest car for sale.


