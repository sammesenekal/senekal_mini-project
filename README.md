# Total Body Weight is Not a Significant Predictor of Theophylline Elimination Half-Life: A Retrospective Analysis

Code and data for my *Mini-project* assignment for BIOL_530H (Scientific Reproducibility)

**Total Body Weight is Not a Significant Predictor of Theophylline Elimination Half-Life: A Retrospective Analysis**

By Samme Senekal

This project is archived at https://fakedoi.org/10.123/12345 on OSF.

All analytical results can be reproduced using the code and data in this repository. Feel free to contact Samme Senekal by [samme.senekal\@ubc.ca](mailto:samme.senekal@ubc.ca) if you have any questions.

**Abstract**

Theophylline is a bronchodilator with a narrow therapeutic index, and its clearance is highly variable between individuals. Consequently, ensuring the proper loading and maintenance doses is essential to reduce common and severe side effects. Half-life measurements are a crucial pharmacological metric that aids physicians in correctly administering pharmaceuticals with such narrow indexes like Theophylline. While the metabolic factors affecting theophylline clearance from the body are known, little work has been done to determine the effect patient total body weight has on the elimination half-life. Therefore, the goal of this retrospective analysis is to determine if total body weight is a significant predictor of the elimination half-life of theophylline. Using the publicly available Theoph dataset ($N=12$), elimination half-lives were derived from log-transformed concentration-time curves. A simple linear regression revealed that total body weight did not significantly predict half life ($p=0.404$, $R^2=0.07$). As a result, total body weight is an unreliable metric for predicting theophylline clearance or guiding maintenance dosing. The lack of correlation is likely due to the drug’s distribution primarily into lean mass and its highly variable hepatic metabolism via cytochrome P450 enzymes.

**Directory/Data and File overview**

-   Raw and processed data can be found in the 'data' folder with a data dictionary

    -   Please consult the data dictionaries in each data directory for definitions of variables.
    -   'data_processed' contains data files that have been subset or values that have been calculated from subset data
    -   'data_raw' contains the raw Theoph dataset. Please do not make changes to this data set or if needed, create a copy before making changes.

-   The manuscript, references, data management plan, and pre-registration can be found in the 'docs' folder

-   All scripts responsible for producing figures and processed data sets can be found in the 'scripts' folder

    -   Scripts are annotated for ease of use.

-   All figures (.png) can be found in 'figs' folder

**Requirements/Data-Specific information**

-   R version 4.5.2

-   I made use of tidyverse package. Please be warned there are lots of packages in the renv folder upon initialization. Thank you!

-   For all packages and versions please see the renv.lock file.

**Citation/Sharing and Access Information**

Senekal, S. J. (2026). Total Body Weight is Not a Significant Predictor of Theophylline Elimination Half-Life: A Retrospective Analysis. $Mock Journal Name$. https://fakedoi.org/01.10020/1234567


**Acknowledgements**

I would like to thank Dr. Pither (University of British Columbia Okanagan Campus) for his help and guidance during this semester and this mini-project.
