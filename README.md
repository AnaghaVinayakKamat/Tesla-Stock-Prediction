# Tesla-Stock-Prediction

In this project, **Exploratory Data Analysis** is carried out on TESLA Stock data obtained from Yahoo Finande: "https://finance.yahoo.com/quote/TSLA/history?period1=1672531200&period2=1704067200&interval=1d&filter=history&frequency=1d&includeAdjustedClose=true".

Here, EDA is performed with different data analysis technologies viz. Python, R, PowerBI, and Microsoft Excel. Furthermore, python keras package is used to predict the stock prices for the month of January and also predicted percentage increase or decrease in the stock prices.

## Methodology

### Part 1: Data Retrieval and Processing
First and foremost, data is collected from the above mentioned source for the period of 1st January 2021 till 1st January 2022. The gathered data is then pre-processed and cleaned by removing empty rows and duplicates.

### Part 2: Exploratory Data Analysis (EDA)
The second part of this project is **Exploratory Data Analysis (EDA)**, which is performed in 4 different ways.
1. **Assessing basic stock performance**: In this first step, closing prices of TESLA stocks are simply plotted againt the timeframe to understand basic movements of stock prices.
2. **Trend Analysis using Simple Moving Average (SMA)**: Simple Moving Averages of stocks is carried out over a 30 days, 100 days and 200 days interval. SMAs are helfull for understanding stock movements on different time intervals. For e.g identifying short term or long term trends for stocks.
3. **Seasonal Trend Analysis**: Here, stocks are analysed based on the monthly average of their closing prices. This can help in understanding which seasons are best for investing in a particular stocks and which can be the best time to sell a stock.
4. **Volatility Analysis**: Volatility Analysis is carried out to understand how frequently stock prices can vary. This helps in understanding the risks involved in investing in a stocks and also it shows the tendency of the stock to diverge from its flow frequently.

### Part 3: Predicting January Stock Prices
To predict stock prices for the month of January 2024, LSTM regression algorithm is used. LSTM can store memories of trends observed within the data during training process which can help finding patterns with unstable data and making more accurate future predictions. Since stock data in most cases is unstable (frequent changes in stock prices), LSTM can be best used in such situations.

## Analysis
After performing EDA, the overall analysis suggested that looking at the historical data, it is risky to invest in Tesla stocks at the moment. Tesla stocks have been highly volatile resulting in higher risks in investments. It is recommended for the investors to hold onto the stocks at the moment. Second point observed is that Tesla stocks have been declined since 2021. Hence, even if the stocks are at lower rates at the moment, it is not recommended to invest in them at present due to their gradual decrease in prices over the period of last 3 years (2021 to 2023). Plus the stocks have been highly volatile showing increased risks. Although, it is observed that Tesla stock prices tend to increase around end of August till mid of October every time indicating best time to sell the stocks (based on historical data of 3 years obtained).

## Predictions Obtained
Predictions made for Tesla stocks in January were not in a good state since it showed a whopping downfall in stock prices by -21%. 

## Overall Technology Review

In this project 4 different technologies were used to try and test their efficiency in easing the tasks. Every technology has its own perks and issues. Microsoft Excel was found to be the best and most comfortable technology to use for building interactive visualizations. Although, PowerBI was better when it comes to statistical calculations for obtaining certain visualizations. Statistical formulas and methods offered in Microsoft PowerBI are more accurate and flexible in use while Microsoft Excel might not give accurate calculations in certain situations. For e.g, SMAs found using Microsoft PowerBI made were more precise than the ones obtained from Microsoft Excel. Yet again, Microsoft Excel offered wide range of simpler tools and functions for building customized visualizations. One major drawback found in PowerBI was customizing visuals. In PowerBI you cannot change the legend titles, you have to use the default ones. 2nd thing was PowerBI doesn't offer you to rotate axis-titles to fit in frame. It itself dynamically rotate based on the number of data present in the axis but doesn't let users customize according to their preferrences. Also, due to some unknown reason, adding a linear regression line in PowerBI seemed difficult while in Excel it was only one function away. Talking about Python and R, unlike PowerBI and Microsoft Excel, Python(Matplotlib library) and R(GGplot2 library) visuals are not that much good in quality in terms of looks. Although, for the ones who are well aware about different statistical formulas and comfortable in coding, these 2 technologies are really good. R is simpler than Python when it comes about performing Data Analysis as R has various dynamic tools and libraries built particularly for data analysis and visualization. Best thing about using programing for analysis is that you can bring any sort of customizations in your visuals by writing code and you don't have to be dependent on a particular software and its functions.
