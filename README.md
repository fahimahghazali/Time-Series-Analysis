<h1 align="center">Time Series Analysis</h1>

### Project Objective
The report focuses on applying the Box-Jenkins approach of analysing time series on financial data. The data is first transformed in two manners, log and reciprocal. These transformations are compared to choose which model fits the data better to make predictions.

#### -- Project Status: [Completed]

### Methods used
- Box-Jenkins approach
- ARIMA modelling
- Hypothesis testing
- Residual analysis

### Technologies
- LateX
- R

## Project Description
ARIMA models have been used to fit the log and reciprocal of the time series, monthly dry white wine sales. The final seven months of the data obtained is excluded from the fit in order to eveluate the prediction ability of the fitted model. The report is split into three sections, the first being dedicated to the log of the sales data. The model orders are identified through the autocorrelation and partial autocorrelation plots, through identifying trends, cutoffs and decays. The parameters of the model is then estimated by maximum likelihood which is done in R, followed by residual analysis through diagnostic plots that must behave like white noise. The same model fitting process is repeated on the reciprocal of the sales data in the second section of the report.

Finally, the third section of the report, the model that fits the data better through the residual analysis and maximised log-likelihood values is chosen to predict the final 7 values of the dataset. This is assumed to be "future" data. Using the `predict` function in R, the predicted sales as well as its 95% prediction interval can be obtained. These values are then compared to the true data excluded from the fit. Finally, the report concludes if either of the two fitted models is suitable for predictions based on the available data.

The final report can be read [here](https://github.com/fahimahghazali/Time-Series-Analysis/blob/main/38032%20tsa.pdf).

## Needs of this project

- Statistical modelling 
- Writeup

## Author
**Nurfahimah Mohd Ghazali**

- [Profile](https://github.com/fahimahghazali "Fahimah Ghazali")
- [Email](mailto:fahimahghazali@icloud.com?subject=Hi% "Hi!")
