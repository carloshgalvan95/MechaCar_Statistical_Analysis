# MechaCar_Statistical_Analysis
The purpose of this analysis is to aid in the production and manufacturing process of the MechaCar prototype. For this analysis our ways to interpret the data will mainly be:

- Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes
- Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots
- Run t-tests to determine if the manufacturing lots are statistically different from the mean population
- Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, you’ll write a summary interpretation of the findings.

## Linear Regression to Predict MPG
---
![linear_regression](https://github.com/carloshgalvan95/MechaCar_Statistical_Analysis/blob/main/Resources/linear_regression.png)

To first evaluate the data we have, we will perform linear regression on out dataset that contains information points on the prototypes, our target variable to predict will be MPG, the metrics we have are:

- Vehicle Lenght
- Vehicle Weight
- Spoiler Angle
- Ground Clearance
- AWD
- **Miles per Gallon(MPG)**

### Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
---
To determine which variables provide a significant contribution to the linear model, we must look at the individual variable p-values.

In the summary output, each **Pr(>|t|)** value represents the probability that each coefficient contributes a random amount of variance to the linear model.

According to our results, **vehicle lenght** and **ground clearance** (as well as intercept) are statistically unlikely to provide random amounts of variance to the linear model.

Depending on our dataset, a significant intercept could mean that the significant features (such as vehicle lenght and ground clearance) may need scaling or transforming to help improve the predictive power of the model. Alternatively, it may mean that there are other variables that can help explain the variability of our dependent variable that have not been included in our model. 


### Is the slope of the linear model considered to be zero? Why or why not?
---
the **p-value** of our linear regression analysis is **5.35 x 10-11**, which is much smaller than our assumed significance level of 0.05%. Therefore, we can state that there is sufficient evidence to reject our null hypothesis, which means that the slope of our linear model is not zero.

### Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
---
From our linear regression model, the **r-squared** value is **0.71**, which means that roughly 71%% of the variablilty of our dependent variable (MPG) is explained using this linear model. 

## Summary Statistics on Suspension Coils
---
In this dataset, the weight capacities of multiple suspension coils were tested to determine if the manufacturing process is consistent across production lots.

For this, we will see summary statistics for:
- The suspension coil’s PSI continuous variable across all manufacturing lots
- The following PSI metrics for each lot:
    - Mean 
    - Median
    - Variance
    - Standard Deviation

- Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch.

![total_summary](https://github.com/carloshgalvan95/MechaCar_Statistical_Analysis/blob/main/Resources/total_summary.png)

While this is true if we just look at the total summary of the three lots, we can see the **variance** is 62 and the **Standard Deviation** is roughly 8 which ensures not more than 100 pounds per square inch limitation will be exceeded.

![lot_summary](https://github.com/carloshgalvan95/MechaCar_Statistical_Analysis/blob/main/Resources/lot_summary.png)

When we look at the summaries for the three lots, there's clearly a problem on lot 3, the **variance** is 170 which means that in some test points the 100 pounds per square inch limitation is being exceeded.

## T-Tests on Suspension Coils
---
The next hypothesis we are going to test is perform t-tests to determine if all manufacturing lots and each lot individually are statistically different from the population mean of 1,500 pounds per square inch.

The one-sample t-test is used to determine whether there is a statistical difference between the means of a sample dataset and a hypothesized, potential population dataset.

![t_test](https://github.com/carloshgalvan95/MechaCar_Statistical_Analysis/blob/main/Resources/t-test.png)

Assuming our significance level was the common 0.05 percent, our **p-value** is above our significance level (**0.06**). Therefore, we do not have sufficient evidence to reject the null hypothesis, and we would state that the two means are statistically similar.

### Lot 1
![t_test_lot1](https://github.com/carloshgalvan95/MechaCar_Statistical_Analysis/blob/main/Resources/t-test_lot1.png)

Same thing happens with the **p-value** in **lot 1** with a **1.0**. We do not have sufficient evidence to reject the null hypothesis, and we would state that the two means are statistically similar.

### Lot 2
![t_test_lot2](https://github.com/carloshgalvan95/MechaCar_Statistical_Analysis/blob/main/Resources/t-test_lot2.png)

Similar results for **lot 2**, a **p-value** of **0.6**. We do not have sufficient evidence to reject the null hypothesis, and we would state that the two means are statistically similar.

### Lot 3
![t_test_lot3](https://github.com/carloshgalvan95/MechaCar_Statistical_Analysis/blob/main/Resources/t-test_lot3.png)

Now, for **lot 3** we have a **p-value** of **0.04** sufficient statistical evidence to reject the null hypothesis and showing that the two means are not statistically similar.

## Study Design: MechaCar vs Competition
---

The most important thing to ensure about MechaCar is that is going to be up to the competitors on the market, to ensure the success of the product, we would have to perform an analysis that determines the main characteristics and differentiators that the consumers are looking for and comparing whenever buying a product of its kind.


### What metric or metrics are you going to test?
Some of the possible metrics we could use are:
- Price range
- Maintenance cost
- Safety rating
- Fuel efficiency

We need to ensure that the metrics we are going to use are measurable to be able to evaluate them.

### What is the null hypothesis or alternative hypothesis?
Then, we need to use a model to determine how much every metric actually influence the success of our product and focus of developing them further.

- The Null Hypothesis would be to test, using linear regression, that the slope of our linear regression is zero.
- On the other hand, our alternative hypothesis would be that the slope is in fact not zero.

### What statistical test would you use to test the hypothesis? And why?
A Linear Regression model would allow us to actually see the significance of all our variables as well as determine if omitting of adding data points would be the best course of action.

### What data is needed to run the statistical test?
We would need both data from the competition as well as for our prototype product, we would need input to determine from consumers which product they would choose if given multiple choices.