# Life expectancy demo

## Overview

This repository contains a **simplified** example of calculating life expectancy using excel. Data was downloaded [here](http://ghdx.healthdata.org/record/global-burden-disease-study-2015-gbd-2015-reference-life-table) from the [Institute for Health Metrics and Evaluation](https://healthdata.org).

Information from the data source's README file:

> Global Burden of Disease Study 2015 (GBD 2015) Reference Life Table The Global Burden of Disease Study 2015 (GBD 2015), coordinated by the Institute for Health Metrics and Evaluation (IHME), estimated the burden of diseases, injuries, and risk factors at the global, regional, national, territorial, and, for a subset of countries, subnational level. This reference life table is used in GBD to calculate Years of Life Lost (YLLs). It was constructed based on the lowest estimated age-specific mortality rates from all locations with populations over 5 million in the 2013 iteration of GBD. YLLs are computed by multiplying the number of estimated deaths by the reference life tables life expectancy at age of death. The table includes estimates for the probability of death within an age range, the proportion of the hypothetical cohort still alive at age x, and life expectancy at age x for ages 0 to 110+ at five-year intervals. Suggested citation:
Global Burden of Disease Study 2015. Global Burden of Disease Study 2015 (GBD 2015) Reference Life Table. Seattle, United States: Institute for Health Metrics and Evaluation (IHME), 2016. Terms and Conditions:
http://www.healthdata.org/about/terms-and-conditions

## Instructions

To compute the life expectancy, you should open the **life-table.xlxs** file which contains the probabilities of deaths from the IHME study. Then, do the following:

1. Compute the **num_survived** column by multiplying the number of people living at the start of the interval (**num_living**) times the probability of survival (one minus the probability of death)

2. Fill in the rest of the **num_living** column using the number of people at the _end of the previous interval_ (i.e., **num_survived**)

3. Compute the **num_died** column by subtracting the number survived from the number of people living at the start of the interval.


4. Compute the _years lived during the interval_ by adding the following values:
    - Years lived by those who survived: number of people who survived the interval times the length of the interval.
    - Years lived by those who _did not_ survive: number of people who died times the average length of the interval


5. Compute the life expectancy by dividing the **total** number of years lived (in _all age intervals_) divided by the number of people living at the start of each interval


See the **life-table-complete.xlxs** file for the completed life expectancies.
