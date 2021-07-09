CREATE TABLE AAPL (
     Date Date NOT NULL,
     Low FLOAT NOT NULL,
     Open FLOAT NOT NULL,
     Volume BIGINT NOT NULL,
     High FLOAT NOT NULL,
     Close FLOAT NOT NULL,
     Adjusted_Close FLOAT NOT NULL,
     PRIMARY KEY (Date)
);

CREATE TABLE GME (
     Date Date NOT NULL,
     Low FLOAT NOT NULL,
     Open FLOAT NOT NULL,
     Volume BIGINT NOT NULL,
     High FLOAT NOT NULL,
     Close FLOAT NOT NULL,
     Adjusted_Close FLOAT NOT NULL,
	FOREIGN KEY (Date) REFERENCES AAPL (Date),
     PRIMARY KEY (Date)
);

CREATE TABLE AMC (
     Date Date NOT NULL,
     Low FLOAT NOT NULL,
     Open FLOAT NOT NULL,
     Volume BIGINT NOT NULL,
     High FLOAT NOT NULL,
     Close FLOAT NOT NULL,
     Adjusted_Close FLOAT NOT NULL,
	FOREIGN KEY (Date) REFERENCES AAPL (Date),
     PRIMARY KEY (Date)
);

CREATE TABLE REDDIT_WSB (
     Title VARCHAR,
     Score INT NOT NULL,
     ID VARCHAR NOT NULL,
     Commns_Num INT NOT NULL,
     Body VARCHAR,
     Timestamp Timestamp NOT NULL,
     PRIMARY KEY (ID)
);

-- Joining AAPL and GME tables on Date to show volume 
SELECT AAPL.date,
	 AAPL.volume,
     GME.volume
FROM AAPL
INNER JOIN GME
ON AAPL.date = GME.date;

-- Joining AAPL and AMC tables on Date to show volume 
SELECT AAPL.date,
	 AAPL.volume,
     AMC.volume
FROM AAPL
INNER JOIN AMC
ON AAPL.date = AMC.date;