import requests
import json


termo = "PETR3"

url = u"https://www.alphavantage.co/query?function=SYMBOL_SEARCH&keywords={}&apikey=0244".format(termo)
response = requests.get(url)

if(response.ok):
    data = json.loads(response.content)

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

    print(r)
else:
    response.raise_for_status()
