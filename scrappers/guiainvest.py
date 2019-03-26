from bs4 import BeautifulSoup
from urllib2 import Request, urlopen


try:
    site = u"https://www.guiainvest.com.br/lista-acoes/default.aspx?listaacaopesquisa=CHVX&listaacaopage=1"
    hdr = {u'User-Agent': u'Mozilla/5.0'}
    req = Request(site, headers=hdr)
    page = urlopen(req)
except HTTPError as e:
    print(e)
except URLError as e:
    print(e)
else:
    bs = BeautifulSoup(page, "html.parser")
    table_body = bs.find('tbody')
    rows = table_body.findAll('tr')

    for row in rows:
        cols = row.findAll('td')
        cols = [x.text.strip() for x in cols]

        print cols[0]
        print cols[1]
        print cols[2]