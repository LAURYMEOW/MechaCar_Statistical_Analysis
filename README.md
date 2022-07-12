# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

We are interested in knowing which of the following variables determine the behavior of the mpg variable.

-vehicle_length,

-vehicle_weight,

-spoiler_angle,

-ground_clearance,

-AWD

To find out, the following function has been generated, which will be evaluated as a multiple linear regression model:

### mpg=f(vehicle_length, vehicle_weight, spoiler_angle, ground_clearance, AWD)

Image 1 shows the results of the multiple linear regression model:

#### Image 1

![Total Summary](https://github.com/LAURYMEOW/MechaCar_Statistical_Analysis/blob/main/Resources/Total%20Summary.png)

The first detail that stands out is that the calculated coefficients are in exponential format, which allows us to see that there is some variable that requires a transformation of its data (it is possible that the size of the vehicle_weight data is generating this noise). .
Assuming that the above does not affect the results, the summary says the following:

- Analysis of each of the explanatory variables:

Remember that the Null Hypothesis establishes that the evaluated variable provide random amounts of variance to the linear model.

When evaluating the p-values ​​at the 0.05% significance level of each of the 6 variables.
According to our results the significant variables for the model would be: vehicle_length and ground_clearance, as well as intercept.

Note: It is very likely that our model has an omitted variable problem due to the significance of our intercept.

- Model analysis:

For its part, the R-squared test reveals that the dependent variable is being expanded by 71.49% by the significant variables.
While the p-value of the model is much lower than the assumed significance level of 0.05%, which implies that there is sufficient statistical evidence that the slope is not zero.
Both results allow us to conclude that the model is acceptable to consider it competitive.

### Summary:

- Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

vehicle_length and ground_clearance, as well as intercept

- Is the slope of the linear model considered to be zero? Why or why not?

No, because there are two statistically significant variables that help explain the variability of the dependent variable.

- Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

No, because it is very likely that we have an omitted variable problem. This model could be improved by making a more robust statistical analysis.

## Summary Statistics on Suspension Coils

Design specifications for MechaCar suspension coils dictate that suspension coils variation must not exceed 100 pounds per square inch.
To evaluate the above, two summary tables of the main statistics were made. The first of them can be seen in image 2:

#### Image 2

![]

It can be seen that in general the variance of the aggregate data of the variable PSI of the suspension coils does not exceed 100 pounds per square inch.
However, when the lots analysis is done (see image 3) it is observed that the variance in the third lot does not meet the established limit, it exceeds the allowed pounds per square inch by 70.
This allows us to conclude that the manufacturing process is not being consistent in all production lots. It is necessary to review what is happening in lot 3.

#### Image 3

![]

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually?
Why or why not?
No, because although on average the third lot meet the requirements, particularly the evaluation of the individual variances show an exceeded variance in the data for this one.
This implies that there is inconsistency in the production of suspension coils in this last lot and therefore it is necessary to audit its process.

## T-Tests on Suspension Coils

To determine if all manufacturing lots and each lot individually are statistically different from the population mean of 1500 pounds per square inch, the corresponding t-tests were performed.
Recall that the null hypothesis states that there is no statistical difference between the observed sample mean and the population mean.

* For the data in general, the estimated mean is 1498.78 PSI, very close to the population data of 1500.

#### Image 4

![]

Image 4 shows that the p-value (0.0603) is slightly higher at the 0.05% level of significance.
Therefore, in this test there is not enough statistical evidence to reject the null hypothesis.

*For Lot1 data, the estimated mean is 1500, equal to the population mean.

#### Image 5

![]

In image 5 it can be seen that the p-value is equal to 1 because the means of the sample and the population are identical.
Therefore, it is evident that there is enough statistical evidence to not reject the null hypothesis.

*For the data of Lot 2, there is an estimated mean of 1500.2 with a minimum difference of .2 with respect to the population mean.

#### Image 6

![]

The statistical data show a p-value for this test of 0.6072, well above the 0.05% level of significance.
From the above, we can conclude that there is no statistical difference between the mean of lot2 and the population mean.

*For Lot3 data, an estimated mean of 1496.14 was obtained with a slight difference from the population mean.

#### Image 7

![]

Considering that the difference between the means in this lot is greater and that the statistical test shows a p-value of 0.0417, which is slightly below the 0.05% level of significance.
It can be concluded that there is enough statistical evidence to reject the null hypothesis in this case.

Conclusion:

This statistical analysis allows us to justify the audit of the production process for lot 3, because we found greater variation in its products and also the average does not meet the established quality parameters.
Failure to do so can have negative consequences for the company's quality rating.


## Study Design: MechaCar vs Competition

In this new study we want to evaluate the behavior of our consumers regarding improvements in security that our new model offers them.
The objective is to prove that our new model is competitive in the market of the same class due to the implementation of more security elements.

##### What metric or metrics are you going to test?

-We will quantify and evaluate if a model with greater security elements is more attractive to consumers than a mid-range car.

##### What is the null hypothesis or alternative hypothesis?

Ho. The null hypothesis would be that consumers are indifferent whether or not the safety of their cars is increased.
Ha. The alternative hypothesis would be that more security elements do have an effect on consumer decisions.

##### What statistical test would you use to test the hypothesis? And why?

It is very likely that we need a Chi-squared test because we have two categorical variables.
And an ANOVA to compare the samples.

##### What data is needed to run the statistical test?

The security elements information of the competition.
The results of a survey of potential consumers of mid-range cars.
