# MechaCar_Statistical_Analysis

The purpose of this analysis is to aid in the production and manufacturing process of the MechaCar prototype. For this analysis our ways to interpret the data will mainly be:

- Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes
- Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots
- Run t-tests to determine if the manufacturing lots are statistically different from the mean population
- Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, you’ll write a summary interpretation of the findings.

## Linear Regression to Predict MPG

![linear_regression](https://github.com/carloshgalvan95/MechaCar_Statistical_Analysis/blob/main/Resources/linear_regression.png)

To first evaluate the data we have, we will perform linear regression on out dataset that contains information points on the prototypes, our target variable to predict will be MPG, the metrics we have are:

- Vehicle Lenght
- Vehicle Weight
- Spoiler Angle
- Ground Clearance
- AWD
- **Miles per Gallon(MPG)**

### Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
To determine which variables provide a significant contribution to the linear model, we must look at the individual variable p-values.

In the summary output, each **Pr(>|t|)** value represents the probability that each coefficient contributes a random amount of variance to the linear model.

According to our results, **vehicle lenght** and **ground clearance** (as well as intercept) are statistically unlikely to provide random amounts of variance to the linear model.

Depending on our dataset, a significant intercept could mean that the significant features (such as vehicle lenght and ground clearance) may need scaling or transforming to help improve the predictive power of the model. Alternatively, it may mean that there are other variables that can help explain the variability of our dependent variable that have not been included in our model. 


### Is the slope of the linear model considered to be zero? Why or why not?
the **p-value** of our linear regression analysis is **5.35 x 10-11**, which is much smaller than our assumed significance level of 0.05%. Therefore, we can state that there is sufficient evidence to reject our null hypothesis, which means that the slope of our linear model is not zero.

### Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
From our linear regression model, the **r-squared** value is **0.71**, which means that roughly 71%% of the variablilty of our dependent variable (MPG) is explained using this linear model. 

## Summary Statistics on Suspension Coils

- Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

## T-Tests on Suspension Coils


## Study Design: MechaCar vs Competition




- What metric or metrics are you going to test?
- What is the null hypothesis or alternative hypothesis?
- What statistical test would you use to test the hypothesis? And why?
- What data is needed to run the statistical test?