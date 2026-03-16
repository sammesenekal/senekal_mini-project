# Total Body Weight is Not a Significant Predictor of Theophylline Elimination Half-Life: A Retrospective Analysis

## Data Dictionary for Half-Life Data

Applicable Files:

-   half_life_results.csv

-   Theoph_threevar.csv

-   Theoph_wthl.csv

Data Dictionary prepared by:

Samme Senekal

M.Sc. Biochemistry Student

University of British Columbia Okanagan Campus

| Variable ID | Variable Name | Variable Definition | Variable Type | Allowable Values/Parameters | Requirement | Sample Values | Notes |
|---------|---------|---------|---------|---------|---------|---------|---------|
| Subject | Patient | Patient ID; each patient was assigned a number from 1-12 | Ordered Factor | 1-12 | Mandatory | 1, 2, 3... | From Theoph_threevar data set |
| conc | Concentration | Concentration of theophylline in the sample recorded in mg/L | Numeric (Continuous) | mg/L | Mandatory | 0.70, 2.18, 11.4 | From Theoph_threevar data set |
| Time | Time | Time since the drug was administered when the sample was drawn from the patient recorded in hours | Numeric (Continuous) | Greater than or equal to 0 hours | Mandatory | 0, 0.25, 1.20 | From Theoph_threevar |
| wt | Weight | Weight of each patient recorded in kg | Numeric (Continuous) | More than 0 kg | Mandatory | 75.9, 59.1 | From raw Theoph data set |
| Slope | Slope | The rate of change in log-concentration over time | Numeric (Continuous) | Typically \< 0 | Mandatory | -0.0485, -0.123 | Calculated via linear regression (lm) of the elimination phase |
| Kel | Kel | Elimination rate constant | Numeric (Continuous) | More than 0 hr-1 | Mandatory | 0.0485, 0.146 | The absolute value of the slope, represents fraction of drug removed per hour |
| Half_Life | Half-life | Time required for blood concentration to reduce by half | Numeric (Continuous) | More than 0 hrs | Mandatory | 14.2, 6.15 | Calculated using formula: t1/2 = ln(2)/Kel |
| ln_conc | Natural Logarithm of Concentraiton | The natural logarithm of plasma concentration, used to linearize the elimination phase | Numeric (Continuous) | Real Numbers | Mandatory | 1.04, 2.05 | Calculated by taking the natural logarithm of concentration (ln(conc)) from the raw Theoph data set |
