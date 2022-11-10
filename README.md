## Group_4

## Selected topic - Predicting Home Prices

## Resources
* Data Sources: test.csv, train.csv, data_description.txt
* Software: Python 3.9.12, Jupyter Notebook 6.4.8, PgAdmin4 v6.8, https://app.quickdatabasediagrams.com/, Tableau, GitHub, Slack, VSCode v1.72.2

## Presentation
https://docs.google.com/presentation/d/e/2PACX-1vSmhfjixnMhFml-mH13Zp4ne5ZOoxOddiR3BigVnAtuqpHSYJfAzXmnFa1m2vh6y-5X4e9xEgmFkEjq/pub?start=false&loop=false&delayms=3000

## Dashboard
https://docs.google.com/presentation/d/e/2PACX-1vTXd4wJ7JITYHxGvTGGFZeDHbpQzvG_IWA8HrrYj6SVFQLzqA6ij90D6u10Y286R2SRclUWwWQsFZ_h/pub?start=false&loop=false&delayms=3000

![Dashboard.png](https://github.com/N-Khalid/Predicting-Home-Prices/blob/Simran---Square-1/Dashboard.png)

##  Reason we selected the topic

We want to investigate how different home features affect the price of a home in Ames, Iowa. The main features we would like to analyze would be:
  - number of bedrooms and bathrooms
  - year built
  - square footage 
  - if the home has heating/central air
  - if the home has a garage, and how many cars can fit in it
  
##  Description of our source of data

https://www.kaggle.com/competitions/house-prices-advanced-regression-techniques/overview

## Questions we hope to answer with the data

  - Based on key home features, how accurately can we predict the cost of a home?
  - Which feature affects the cost the most? What feature affects the cost the least?
  
##  Machine Learning

We chose a supervised machine learning model in order to help us predict the sale price, a known dependent variable, against several different house features, the independent variables. 

### Data Preprocessing

The goal of data preprocessing is to change our initial dataset into a cleaner dataset to assist in answering our questions. Our data preprocessing process is as follows:

- Make a copy of our initial dataset to use as the working dataset
- Familiarize ourselves with the data by identifying data types for each column
- Identify what our dependent (SalePrice) and independent variables will be
- Find the correlation between each of our independent variables and the sale price
- Check for columns with null data and comparing them to the other variables to help decide what we will do (outright remove or use an average of the variable)

    
### Feature Engineering

We chose to drop all variables missing 5% or more of their data which lead to us removing 11 variables
-	(PoolQC, MiscFeature, Alley, Fence, FireplaceQu, LotFrontage, GarageYrBlt, GarageCond, GarageType, GarageFinish, GarageQual)
- This left us with 79 variables in total. We don't want to be heavy handed when dropping features due to information being left out where we may come to an incorrect decision based on the data presented. On the other side, due to the amount of variables, we do want to remove some features due to overfitting the model. We want our model to be able to generalize and predict rather than have as perfect data as possible which would hinder our results.

### Splitting the Data

The dataset came prepared two datasets labeled for test and train for convienience. When splitting the train dataset we chose the sale price as the target (X) variable and the remainder of the dataset as the independent (y) variables.   

###  Model Choice

The model we decided to use is a multiple linear regression model. We decided to go with a supervised machine learning model because we are trying to predict a known dependent variable (sale price) with various independent variables that can all effect the sale price (lot size, type of road access to the property, year built, heating, central air, full bath, half bath, bedrooms, total rooms and garage size). When drafting our model, we did not change the type of model we decided on between segments 2 and 3.

![Multiple_Linear_Regression.png](https://github.com/N-Khalid/Predicting-Home-Prices/blob/Simran---Square-1/Multiple_Linear_Regression.png)

Limitations: 

- The size of the dataset can skew the analysis. If there are only a few datapoints, we may conclude that the weight of certain variables may be higher or lower than they really are. 
- Incomplete data can make us conclude things strictly based on whats presented in the dataset. If certain variables with high correlation are absent from the dataset meanwhile low correlation variables are present, we may conclude that our target value may be higher or lower than it really is.

Benefits: 

- We are able to identify the correlation between of one or more variables to our target variable and exactly how much each independent variable influences it.
- We are able to identify the outliers in our dataset. When we use this model we can see certain variables may not have as much influences as one may have thought and can potentially remove them. We can also find out that certain target variables may or may not be influenced the same way as other similar target variables.

### Model Training

Our data came with train and test data already available. We trained our model by using the train dataset and splitting it into X_train, X_test, y_train and y_test. We reshaped and fit our split ensure we keep the same amount of columns between the two by using .reshape in the NumPy and sklearn libraries. 

### Model Matrix and Accuracy Scores

Since we used a multiple linear regression model instead of a classification model, confusion matrix and final accuracy scores are not able to used. Instead we decided to use three other measures of error: mean absolute error, mean squared error and root mean-square deviation.

### Answering Our Main Question

# Database Integration

![Database_Connection.png](https://github.com/N-Khalid/Predicting-Home-Prices/blob/Simran---Square-1/Database_Connection.png)

![uickDBD.png](https://github.com/N-Khalid/Predicting-Home-Prices/blob/Simran---Square-1/QuickDBD.png)

![ERD.png](https://github.com/N-Khalid/Predicting-Home-Prices/blob/main/ERD.png)



## First Segment Deliverable

For the first segment of the final project, we created an initial presentation that details the main focus of our project, and our plans to work with the data. We also listed the main questions that we would like to answer as we work through the dataset. The README was updated with this draft, as seen below: 

![Initial_GitHub_Setup.png](https://github.com/N-Khalid/Predicting-Home-Prices/blob/Simran---Square-1/Initial_GitHub_Setup.png)

For our initial GitHub setup, we created four branches for each of the team members, and assigned our roles. The branches were named with the respective roles to create a space for each team member's work. 

![GitHub_Branches.png](https://github.com/N-Khalid/Predicting-Home-Prices/blob/Simran---Square-1/GitHub_Branches.png)


## Second Segment Deliverable 

As we continued to work on the project, the machine learning model and database integration were further developed. The GitHub branches were updated by each respective team meber,and production-ready code was pulled into the main branch. The presentation was also drafted, where we have detailed our thought process to provide insight to our model choice and analysis. 
