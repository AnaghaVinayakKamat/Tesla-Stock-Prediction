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
