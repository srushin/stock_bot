# Overview
    Try to predict stock price for (insert specific stock tickers/names here) using structured machine learning focused on volume and moving average.

    Try to classify and identify how r/wallstreetbets/ affects stock price and are the number of posts a major factor on the performance of (insert specific stock tickers/names here).

    Data Constraints: 
      -Bound time to the last 5 years 
      -Focused on close prices 
      -Daily time frame 
      -Top 5 Volume traded stocks (GME,AMC,CLOV,CLNE)

## Tools
    -Github(Version Control) 
    -ETL(Python/JS, Dataframes/JSON, Prostgre{AWS,?}) (ERD) 
    -Structured Machine Learning(Python) Prediction** 
    -Unstructured ML (Python) Classification 
    -Dashboard(Tableau)

    ETL (Drake/Group)
    Price: Kaggle Volume: Kaggle Moving Average: Daily calculation of price from Kaggle data Reddit: API call (i'll try to dig into how to make this call and write a sample script for next week {Chris})

### Machine Learning(Lisette)
    
    1.Description of Data preprocessing
    1A. Text Pre-processing
    At first we have the major goal to perform data cleaning and make the content suitable for sentiment analysis (nlp).
    -Remove the unwanted textual part from the message in the title column.
    -Perform the natural language processing techniques using sentiment analysis VADER, textblob, lime, shap?.
    -Bring out the well pre-processed text from the text pre-processing.
    1B. Sentiment type 
    Detect sentiment from the "title" column that we got from pre-processed text and take a count of it for further analytical process.
    -Find the appropriate words that express emotions or feelings.
    -Check the emotion category of each sentimental type (finding if they are neutral, negative, positive).
    -Store the count of emotions relevant to the words found.
    1C. Sentiment Analysis
    After sentiment investigation, there is the time of getting the significant output for the textual message we input earlier.
    -The output will be in the form of dictionary.
    -There will be keys as emotion categories and values as emotion score from the karma score already established by reddit.
    -Higher the score of a particular emotion category, we can conclude that the message belongs to that category.

    2.Feature engineering data from kaggle and using the model VADER/textblob.The feature selection would be connecting the volume and date from    the stock ( AAPL,GME) to the sentiment types from the r/wallstreetbets database. The decision to use the "title" column was for the robust  information.

    3.The data was split into training and testing sets at first i created a sentiment_type column but i decided to use textblob with VADER to analyze the "title" column and determine how to find if its neutral, positive, or negative.

    4.Explanation of model choice, including limitations and benefits
    -textblob is the python package which will help to extract the emotions from the content, here we are extracting from reddit/wallstreet bets.
    --Processes any textual message and recognize the emotions embedded in it.
    --using sentiment type: neutral, positive, negative.

    5.Explanation of changes in model choice (if changes occurred between the Segment 2  and Segment 3 deliverables)i would have loved to use   text2emotion instead of vader/textblob but i didn't want to spend too much time learning it so someone suggested using VADER which we had never heard of it seemed as if it was used more for scraping data from twitter versus an excel database but i was hoping i could get it to work somewhat the same by just using the text from title column as "twitter comments". I liked text2emotions because i thought it did a more indepth look by also focusing on emojis/emoticons.

    6.Description of how they have trained the model thus far, and any additional training that will take place 
    so far the sentiment was trained with the title column to get the neutral, positive, negative types next the stock needs to be trained with the emotions using the volume and dates to ultimately recieve messages when an influx of emotions and a stock our commented on r/wallstreetbets

    7.Description of current accuracy score 
    the accuracy score was really low i think without using words like Happy, Fear, Sad versus neutral its hard for the machine learning to really decide how to categorize the data calculated as neutral it seems looking at the data that neutral usually leans towards positive sentiment type.

    8.Additionally, the model obviously addresses the question or problem the team is solving ?
    I'm curious if we could use a Flask.app, python to send SMS message straight to phone just to see if it would work or AWS on a larger scale but right now the model only addresses the sentiment part of the text it has been trained to predict comments as either positive, neutral, or negative. we will then need to use deep learning and use the volume from the stock and use the dates to determine (cross-examine) how the sentiments played in the decision-making ability for the consumer buying the selected stock using the tickers created.

### Tableau
[Storyboard Link](https://public.tableau.com/app/profile/lisette.worster/viz/SentimentAnalysis_16252430553980/Storyboard)

[Dashboard Link](https://public.tableau.com/app/profile/lisette.worster/viz/SentimentAnalysis_16252430553980/Dashboard)

### Google Slides Presentation
[Presentation](https://docs.google.com/presentation/d/1XOsLk_ywS7JSwWmFjPFMf7BQVyQRQjJGoViyDx5BsoE/edit?usp=sharing)

#### Questions
    Look at # of shorts for a given year?
    What key indicators affect stock price the most? (Volume, Moving Average, RSI**, VWAP**)
    How stocks perform vs industry average?
    How specific stocks perform against general market?
    How does # of reddit posts on Walstreet Bets affect the performance against specific stocks?
