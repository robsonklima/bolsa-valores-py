from builtins import enumerate

import requests
import json
from db_symbol import DbSymbol


symbols = DbSymbol.get_all()

for i, symbol in enumerate(symbols):
    url = u"https://www.alphavantage.co/query?function=SYMBOL_SEARCH" \
          u"&keywords={}&apikey=0244".format(symbol["symbol"])
    response = requests.get(url)

    if(response.ok):
        data = json.loads(response.content)

        if (("Error Message" in data) or (len(data["bestMatches"]) == 0)):
            continue

        r = {
            "symbol": data["bestMatches"][0]["1. symbol"],
            "name": data["bestMatches"][0]["2. name"],
            "type": data["bestMatches"][0]["3. type"],
            "region": data["bestMatches"][0]["4. region"],
            "marketOpen": data["bestMatches"][0]["5. marketOpen"],
            "marketClose": data["bestMatches"][0]["6. marketClose"],
            "timezone": data["bestMatches"][0]["7. timezone"],
            "currency": data["bestMatches"][0]["8. currency"],
            "matchScore": data["bestMatches"][0]["9. matchScore"],
        }

        print(data["bestMatches"][0]["1. symbol"])

        DbSymbol.update(data["bestMatches"][0]["1. symbol"], symbol["symbol_id"])
    else:
        response.raise_for_status()