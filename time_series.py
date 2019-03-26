import requests
import json

from db_symbol import DbSymbol
from db_time_series import DbTimeSeries


symbols = DbSymbol.get_all_with_symbol_codes()

for symbol in symbols:
    url = u"https://www.alphavantage.co/query?function=TIME_SERIES_INTRADAY&symbol={}.SA" \
          u"&interval=60min&outputsize=full&apikey=0244".format(symbol["symbol_code"])
    response = requests.get(url)

    if(response.ok):
        data = json.loads(response.content)

        if ("Error Message" in data):
            print(u"Stock {} couldn't be processed.".format(symbol["symbol_code"]))
            continue

        for time_serie in data["Time Series (60min)"]:
            open = (data["Time Series (60min)"][time_serie]["1. open"])
            high = (data["Time Series (60min)"][time_serie]["2. high"])
            low = (data["Time Series (60min)"][time_serie]["3. low"])
            close = (data["Time Series (60min)"][time_serie]["4. close"])
            volume = (data["Time Series (60min)"][time_serie]["5. volume"])

            DbTimeSeries.insert(time_serie, symbol["symbol_code"], open, high, low, close, volume)

        print(u"Stock {} processed.".format(symbol["symbol_code"]))
    else:
        response.raise_for_status()