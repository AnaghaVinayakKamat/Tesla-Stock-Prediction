library(ggplot2)
library(dplyr)
library(tidyverse)
library(zoo)


# Load Tesla stock data from the CSV file
tesla_data <- read.csv("D:/Anagha/Projects/Tesla/tsla.csv")

# Convert Date column to Date format
tesla_data$Date <- as.Date(tesla_data$Date)

# Calculate moving averages (20-day, 50-day, and 100-day)
tesla_data <- tesla_data %>%
  mutate(SMA_20 = rollmean(Close, k = 20, fill = NA),
         SMA_50 = rollmean(Close, k = 50, fill = NA),
         SMA_100 = rollmean(Close, k = 100, fill = NA))

# Plot using ggplot
ggplot(data = tesla_data, aes(x = Date)) +
  #geom_line(aes(y = Close), color = "blue") +
  geom_line(aes(y = SMA_20), color = "red", linetype = "solid") +
  geom_line(aes(y = SMA_50), color = "green", linetype = "solid") +
  geom_line(aes(y = SMA_100), color = "orange", linetype = "solid") +
  labs(title = "Tesla Stock Price with Moving Averages (20, 50, and 100 days)",
       x = "Date",
       y = "Stock Price (USD)") +
  theme_minimal()



# Calculate rolling standard deviation for 20-day, 50-day, and 100-day periods
tesla_data <- tesla_data %>%
  mutate(Volatility_20 = rollapply(Close, width = 20, FUN = sd, fill = NA),
         Volatility_50 = rollapply(Close, width = 50, FUN = sd, fill = NA),
         Volatility_100 = rollapply(Close, width = 100, FUN = sd, fill = NA))

# Plot volatility analysis
ggplot(data = tesla_data, aes(x = Date)) +
  geom_line(aes(y = Volatility_20, color = "20-Day"), linetype = "solid") +
  geom_line(aes(y = Volatility_50, color = "50-Day"), linetype = "solid") +
  geom_line(aes(y = Volatility_100, color = "100-Day"), linetype = "solid") +
  labs(title = "Tesla Stock Volatility Analysis (20, 50, and 100 days)",
       x = "Date",
       y = "Volatility",
       color = "Period") +
  scale_color_manual(values = c("20-Day" = "blue", "50-Day" = "green", "100-Day" = "red")) +
  theme_minimal()



#Plot volume analysis using scatter plot
ggplot(data = tesla_data, aes(x = Date, y = Volume)) +
  geom_point(color = "blue", alpha = 0.5) +
  labs(title = "Tesla Stock Volume Analysis",
       x = "Date",
       y = "Volume") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))


# Calculate OBV
tesla_data <- tesla_data %>%
  mutate(Daily_Return = ifelse(is.na(lag(Close)), 0, Close - lag(Close)),
         Direction = ifelse(Daily_Return > 0, 1, ifelse(Daily_Return < 0, -1, 0)),
         OBV = cumsum(Direction * Volume))

# Plot OBV analysis using ggplot
ggplot(data = tesla_data, aes(x = Date, y = OBV)) +
  geom_line(color = "red", size = 1) +
  labs(title = "Tesla Stock On-Balance Volume (OBV) Analysis",
       x = "Date",
       y = "OBV") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))



# Extract month from Date
tesla_data$Month <- format(tesla_data$Date, "%m")

# Calculate average stock price for each month
monthly_avg <- tesla_data %>%
  group_by(Month) %>%
  summarize(Avg_Price = mean(Close))

# Plot seasonal trend using scatter plot
ggplot(monthly_avg, aes(x = factor(Month), y = Avg_Price)) +
  geom_point(color = "blue", size = 3) +
  labs(title = "Seasonal Trend of Tesla Stock Price by Month",
       x = "Month",
       y = "Average Stock Price (USD)") +
  scale_x_discrete(labels = month.abb) +  # Show month abbreviations on x-axis
  theme_minimal()
