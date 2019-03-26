import requests
import json

from db_time_series import DbTimeSeries


stocks = ['ARMT34.SAO']

for stock in stocks:
    url = u"https://www.alphavantage.co/query?function=TIME_SERIES_INTRADAY" \
          u"&symbol={}.SA&interval=60min&outputsize=full&apikey=0244".format(stock)
    response = requests.get(url)

    if(response.ok):
        data = json.loads(response.content)

        if ("Error Message" in data):
            print(u"Stock {} couldn't be processed.".format(stock))
            continue

        for time_serie in data["Time Series (60min)"]:
            symbol = data["Meta Data"]["2. Symbol"]
            open = (data["Time Series (60min)"][time_serie]["1. open"])
            high = (data["Time Series (60min)"][time_serie]["2. high"])
            low = (data["Time Series (60min)"][time_serie]["3. low"])
            close = (data["Time Series (60min)"][time_serie]["4. close"])
            volume = (data["Time Series (60min)"][time_serie]["5. volume"])

            DbTimeSeries.insert(time_serie, symbol, open, high, low, close, volume)
    else:
        response.raise_for_status()