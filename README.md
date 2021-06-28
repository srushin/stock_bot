# stock_bot
## Overview
    Try to predict stock price for (insert specific stock tickers/names here) using structured machine learning focused on volume and moving average.

    Try to classify and identify how r/wallstreetbets/ affects stock price and are the number of posts a major factor on the performance of (insert specific stock tickers/names here).

    Data Constraints: 
      -Bound time to the last 5 years 
      -Focused on close prices 
      -Daily time frame 
      -Top 5 Volume traded stocks (GME,AMC,CLOV,CLNE)
 
 ## Communication
    - Slack workspace: group project - data
    - Virtual class: tuesday and thursday (7pm-9pm)
    - Zoom meetings
 
# Tools
    -Github(Version Control) 
    -ETL(Python/JS, Dataframes/JSON, Prostgre{AWS,?}) (ERD) 
    -Structured Machine Learning(Python) Prediction** 
    -Unstructured ML (Python) Classification 
    -Dashboard(Tableau)

    ETL (Drake/Group)
    Price: Kaggle Volume: Kaggle Moving Average: Daily calculation of price from Kaggle data Reddit: API call (i'll try to dig into how to make this call and write a sample script for next week {Chris})

    ML(Lisette/Group)
    Prediction Model: Structured ML (Which factor can predict stock price the best? (Volume, Moving average, Number of reddit posts?, Other Indicator?)) Are we going to use Linear Regression, Logistic Regression, Other? Classification: Unstructured ML # of Reddit mentions (need to talk about this one further)
 
 ## Machine Learning(Lisette)
    
    1.Description of Data preprocessing
        1A. Text Pre-processing
    At first we have the major goal to perform data cleaning and make the content suitable for sentiment analysis (nlp).
        -Remove the unwanted textual part from the message in the title column.
        -Perform the natural language processing techniques using sentiment analysis VADER, textblob, lime, shap?.
        -Bring out the well pre-processed text from the text pre-processing.
    1B. Emotion 
     Detect emotion from the "title" column that we got from pre-processed text and take a count of it for further analytical process.
        -Find the appropriate words that express emotions or feelings.
        -Check the emotion category of each sentimental type (finding if they are neutral, negative, positive).
        -Store the count of emotions relevant to the words found.
    1C. Emotion Analysis
    After emotion investigation, there is the time of getting the significant output for the textual message we input earlier.
        -The output will be in the form of dictionary.
        -There will be keys as emotion categories and values as emotion score from the karma score already established by reddit.
        -Higher the score of a particular emotion category, we can conclude that the message belongs to that category.

    2.Feature engineering data from kaggle and using the model VADER/textblob.The feature selection would be connecting the volume and date from the stock ( AAPL,GME) to the sentiment types from the r/wallstreetbets database. The decision to use the "title" column was for the robust information.

    3.The data was split into training and testing sets at first i created a sentiment_type column but i decided to use textblob with VADER to analyze the "title" column and determine how to find if its neutral, positive, or negative.

    4.Explanation of model choice, including limitations and benefits
        -textblob is the python package which will help to extract the emotions from the content, here we are extracting from reddit/wallstreet bets.
        --Processes any textual message and recognize the emotions embedded in it.
        --using sentiment type: neutral, positive, negative.

# Questions
    Look at # of shorts for a given year?
    What key indicators affect stock price the most? (Volume, Moving Average, RSI**, VWAP**)
    How stocks perform vs industry average?
    How specific stocks perform against general market?
    How does # of reddit posts on Walstreet Bets affect the performance against specific stocks?
