# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG
The vehicle length and its ground clearance have the lowest `Pr(>|t|)` values. They both are unlikely to contribute random variance to the model with values well under .001 and have the most significant impact on miles per gallon. Vehicle weight has a `Pr(>|t|)` of .0776 which is higher than the .05 significance level, and therefore is not provides too much random variance to be considered significant. The regression model is seen here: [linear_model](https://github.com/taherrin92/MechaCar_Statistical_Analysis/blob/main/Resources/Linear_Regression.png)

Having a slope of zero in a regression model means that the two variables being compared are completely random, and there is no relationship between the two. The slope can be interpreted from the `Estimate` column. The `Estimate` value in the `(Intercept)` row is the is the intercept of the model, and the values below are the slopes for the equation y= B<sub>0</sub> + B<sub>1</sub>x<sub>1</sub>+ + B<sub>2</sub>x<sub>2</sub>+...+B<sub>n</sub>x<sub>n</sub> where the `(Intercept)` `Estimate` is B<sub>0</sub> and the `Estimate` values below the intercept are the B<sub>n</sub> slopes for the variables. The equation would follow:
 - mpg = -1.000e+02 + 6.196x<sub>vehicle_length</sub> + 1.245e-03x<sub>vehicle_weight</sub> + ... + 3.546x<sub>ground_clearance</sub>

This means that when everything is held constant, increasing the vehicle length by 1 will improve gas milage by 6.196 mpg.  The slope of the model is non-zero for vehicle length, ground clearance and all wheel drive (but because AWD is more of an index and only has two discreet values 0 and 1, the slope of the line is highly influenced by the endpoints and should not be included in the model). The non-zero slopes from vehicle length and ground clearance significantly impact the mpg.

The model does predict mpg effectively with an R<sup>2</sup> value of 0.7149, meaning that the model accounts for 71.49% of the variance. The model's F-statistic is large at 22.07 and the overall p-value is 5.35e-11 which is much lower than the 0.05 significance level.

## Summary Statistics on Suspension Coils

The variance in the suspension coils is 62.29 PSI and overall fits the specs. The variance in the PSI of Lots 1 and 2 are under 10 PSI, and do not exceed 100 pounds per square inch specs. Lot 3 does not meet the design specifications and has a variance of 170.286 PSI. Lot 3 accounts for the majority of the variance in the overall calculation and should be redesigned.

## T-Tests on Suspension Coils

The t-test from Lot 1 has a p-value = 1, has a 95% confidence level between 1499.719 and 1500.281 PSI and its mean PSI is 1500. The null hypothesis that the suspension coils designed in Lot 1 meet the specifications cannot be rejected because the p-value is > 0.05.

The t-test from Lot 2 has a p-value = .6072, has a 95% confidence level between 1499.423 and 1500.977 PSI and its mean PSI is 1500.2. The null hypothesis that the suspension coils designed in Lot 1 meet the specifications cannot be rejected because the p-value is > 0.05.

The t-test from Lot 3 has a p-value = .04168, has a 95% confidence level between 1492.431 and 1499.849 PSI and its mean PSI is 1496.14. The null hypothesis that the suspension coils designed in Lot 1 meet the specifications is rejected because the p-value is < 0.05, the design from Lot 3 needs to raise the PSI to meet the specs.
