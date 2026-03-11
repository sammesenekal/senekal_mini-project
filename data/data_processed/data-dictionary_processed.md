# Total Body Weight is Not a Significant Predictor of Theophylline Elimination Half-Life: A Retrospective Analysis

## Data Dictionary for half-life data

Data Dictionary prepared by:

Samme Senekal

M.Sc. Biochemistry Student

University of British Columbia Okanagan Campus

| Variable ID | Variable Name | Variable Definition | Variable Type | Allowable Values/Parameters | Requirement | Sample Values | Notes |
|---------|---------|---------|---------|---------|---------|---------|---------|
| Subject | Patient | Patient ID; each patient was assigned a number from 1-12 | Ordered Factor | 1-12 | Mandatory | 1, 2, 3... | From original Theoph data set |
| Slope | Slope | The rate of change in log-concentration over time | Numeric (Continuous) | Typically \< 0 | Mandatory | -0.0485, -0.123 | Calculated via linear regression (lm) of the elimination phase |
| Kel | Kel | Elimination rate constant | Numeric (Continuous) | More than 0 hr-1 | Mandatory | 0.0485, 0.146 | The absolute value of the slope, represents fraction of drug removed per hour |
| Half_Life | Half-life | Time required for blood concentration to reduce by half | Numeric (Continuous) | More than 0 hrs | Mandatory | 14.2, 6.15 | Calculated using formula: t1/2 = ln(2)/Kel |
| ln_conc | Natural Logarithm of Concentraiton | The natural logarithm of plasma concentration, used to linearize the elimination phase | Numeric (Continuous) | Real Numbers | Mandatory | 1.04, 2.05 | Calculated by taking the natural logarithm of concentration (ln(conc)) from the raw Theoph data set |
