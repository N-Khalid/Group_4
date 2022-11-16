## Group_4

## Selected topic - Predicting Home Prices

## Resources
* Data Sources: test.csv, train.csv, data_description.txt
* Software: Python 3.9.12, Jupyter Notebook 6.4.8, PgAdmin4 v6.8, https://app.quickdatabasediagrams.com/, Tableau, GitHub, Slack, VSCode v1.72.2

## Presentation
[Google Slides](https://docs.google.com/presentation/d/e/2PACX-1vSmhfjixnMhFml-mH13Zp4ne5ZOoxOddiR3BigVnAtuqpHSYJfAzXmnFa1m2vh6y-5X4e9xEgmFkEjq/pub?start=false&loop=false&delayms=3000)

## Dashboard

<div class='tableauPlaceholder' id='viz1668564986129' style='position: relative'><noscript><a href='#'><img alt='Interactive Story ' src='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;Io&#47;IowaReal-estateAnalysis&#47;InteractiveStory&#47;1_rss.png' style='border: none' /></a></noscript><object class='tableauViz'  style='display:none;'><param name='host_url' value='https%3A%2F%2Fpublic.tableau.com%2F' /> <param name='embed_code_version' value='3' /> <param name='site_root' value='' /><param name='name' value='IowaReal-estateAnalysis&#47;InteractiveStory' /><param name='tabs' value='no' /><param name='toolbar' value='yes' /><param name='static_image' value='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;Io&#47;IowaReal-estateAnalysis&#47;InteractiveStory&#47;1.png' /> <param name='animate_transition' value='yes' /><param name='display_static_image' value='yes' /><param name='display_spinner' value='yes' /><param name='display_overlay' value='yes' /><param name='display_count' value='yes' /><param name='language' value='en-US' /><param name='filter' value='publish=yes' /></object></div>                <script type='text/javascript'>                    var divElement = document.getElementById('viz1668564986129');                    var vizElement = divElement.getElementsByTagName('object')[0];                    vizElement.style.width='1016px';vizElement.style.height='991px';                    var scriptElement = document.createElement('script');                    scriptElement.src = 'https://public.tableau.com/javascripts/api/viz_v1.js';                    vizElement.parentNode.insertBefore(scriptElement, vizElement);                </script>

## Interactive Dashboard Part 1
In the first Dashboard we created a Histogram of the average sale price for homes in Ames, Iowa. It shows that most homes sold for around $127,000. We set a neighborhood filter so you can see what the pricing is like per neighborhood. This would be useful information to know if you are buying or selling. The graph below it shows the impact that Masonry Vaneer area and age has on the cost of the home. Overall  the newer the home or the larger surface area of a Vaneer type relates to a higher sale price.
## Interactive Dashboard Part 2
For the 2nd Dashboard the first graph on top compared the Average Lot Area to the Average Sale Price. We added the Central Air as a filter because we wanted to see if it would have an effect on pricing. Smaller lot size is definitely correlated with a lower price and though some homes without central air sold for more than homes with central air none of the homes without central air sold for more than the average price. The 2nd graph compares the average overall quality of the home compared to the average sale price. We added in the Heating filter to see if the type of heating a home used had an effect on the price. Homes without a central heating system had a lower quality score and sold for less on average. In this section of the story we added another Neighborhood filter as well as a Heating Quality and Condition Filter and Average Overall Quality filter. The most interesting part of the Heating and Quality Condition Filter is that there are homes that score excellent on this but do not have a Central Air system. This shows that heating is overall more important than central air.
## Interactive Dashboard Part 3
For the 3rd Dashboard we compared Overall Quality, Year Built, and Full Bath to Average Sale Price. For the Overall Quality to Average Sale Price I added in the Garage Cars filter. The garage cars filter shows the number of cars the garages a house has can fit. Unsurprisingly the homes that have more car spots tend to sell for more. We added the Garage Condition and Garage Type filters to be crossed with all graphs along with Neighborhood as well. Overall newer homes sold for more and homes with a higher overall quality score also sold for more. Homes that had more full and half baths sold for more than homes with fewer.


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

We retrained our linear regression model with the LightGBM gradient boosting framework created by Microsoft. When comparing our measures of accuracy before and after retraining, we found using this framework helped lower the errors our model found.

### Model Matrix and Accuracy Scores

Since we used a multiple linear regression model instead of a classification model, confusion matrix and final accuracy scores are not able to used. Instead we decided to use three other measures of accuracy/error: mean squared error, mean absolute error and root mean-square deviation.

Mean squared error (MSE) - The mean squared error determines if our model predicts outliers with large errors. Typically the MSE is compared between models to see how accurate they are between 0-1 scores. While we want a lower value, we do not want our MSE to be 0 as that would mean our model perfectly predicts our training data which is a sign of overfitting. Our MSE is 0.177.

Mean absolute error (MAE) - Mean Absolute Error is the average of absolute errors so we want this value to be quite low as a good model will give minimal errors but not 0 errors. Our MAE is 0.264.

Root mean-square deviation (RMSE) - RSME is the standard deviation of our prediction compared to the the regression/best fit line. Like our previous measures, we want our RSME to be low but not perfect. Our RMSE 0.421

### Answering Our Main Question

Question 1 - Based on key home features, how accurately can we predict the cost of a home? 

- Based on our accuracy measures, we are able to closely predict the cost of a home based on over 60 seperate individual variables.

Question 2 - Which feature affects the cost the most? What feature affects the cost the least?
 
Most:

1. OverallQual: Rating of the overall material and finish of the house
2. GrLivArea: Above grade (ground) living area square feet      
3. GarageCars: Size of garage in car capacity      
4. GarageArea: Size of garage in square feet      
5. TotalBsmtSF: Total square feet of basement area     

Least:

1. BedroomAbvGr: Total rooms above grade (does not include bathrooms)
2. ScreenPorch: Screen porch area in square feet
3. PoolArea: Pool area in square feet
4. MoSold: Month Sold           
5. 3SsnPorch: Three season porch area in square feet     
