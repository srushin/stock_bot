# Sentiment Analysis of Wallstreetbets Reddit

## Overview
Using historcial stock volume, price changes, and reddit coments to predict future stock price movement based on reddit comments. Traditionally the stock market is heavily influenced by large investment banks and hedge funds buying and selling large volumes of stocks. However from Jan 13th, 2021 through Feb 3rd, 2021, the stock market saw a huge disruption from retail investors, heavily spurred on by Reddit forum “r/wallstreetbets”. 
![1_7bA1kd2YezNvkpA4EZQHtQ](https://user-images.githubusercontent.com/78064648/123714755-cb3e8e80-d82b-11eb-914e-7e455b0818ce.jpg)
 - Data Constraints: 
    - Bound time to the last 5 years 
      - ![Screen Shot 2021-06-29 at 8 13 18 PM](https://user-images.githubusercontent.com/78064648/123896565-a83cd900-d916-11eb-8d4c-85cdd1202b21.png)
    - Focused on close prices 
    - Daily time frame, including the hours between market open & market close.
    - Top stocks based on volume 
    - GME
      - ![Screen Shot 2021-06-29 at 8 18 21 PM](https://user-images.githubusercontent.com/78064648/123896871-403ac280-d917-11eb-967f-04b4d23eff9d.png)
    - AMC
      - ![Screen Shot 2021-06-29 at 8 17 38 PM](https://user-images.githubusercontent.com/78064648/123896994-83953100-d917-11eb-887c-f900bb304e48.png)
    - AAPL
      - ![Screen Shot 2021-06-29 at 8 17 07 PM](https://user-images.githubusercontent.com/78064648/123897017-93ad1080-d917-11eb-9d76-020ae290063f.png)


 ### Communication
    - Slack workspace: group project - data
     - ![Screen Shot 2021-07-06 at 5 14 27 PM](https://user-images.githubusercontent.com/78064648/124681650-d9208f00-de7d-11eb-8a4a-1e86061fc72b.png)

    - Virtual class: tuesday and thursday (7pm-9pm)
    - Zoom meetings
    
#### Google Slides
   [Link](https://docs.google.com/presentation/d/1XOsLk_ywS7JSwWmFjPFMf7BQVyQRQjJGoViyDx5BsoE/edit?usp=sharing)
 
#### Tools
    -Github(Version Control) 
    -ETL(Python/JS, Dataframes/JSON, Prostgre{AWS,?}) (ERD) 
    -Structured Machine Learning(Python) Prediction** 
    -excel 
    - postgres
    -Unstructured ML (Python) Classification 
    -Dashboard(Tableau)

    ETL (Drake/Group)
    Price: Kaggle Volume: Kaggle Moving Average: Daily calculation of price from Kaggle data Reddit: API call (i'll try to dig into how to make this call and write a sample script for next week {Chris})

    ML(Lisette/Group)
    Prediction Model: Structured ML (Which factor can predict stock price the best? (Volume, Moving average, Number of reddit posts?, Other Indicator?)) Are we going to use Linear Regression, Logistic Regression, Other? Classification: Unstructured ML # of Reddit mentions (need to talk about this one further)
 
 #### Machine Learning(Lisette)
    
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
    - ![Screen Shot 2021-07-06 at 5 20 32 PM](https://user-images.githubusercontent.com/78064648/124681975-96ab8200-de7e-11eb-97da-df87bda822cf.png)

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

###### Questions
    Look at # of shorts for a given year?
    What key indicators affect stock price the most? (Volume, Moving Average, RSI**, VWAP**)
    How stocks perform vs industry average?
    How specific stocks perform against general market?
    How does # of reddit posts on Walstreet Bets affect the performance against specific stocks?
