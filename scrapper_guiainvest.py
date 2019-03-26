#!/usr/bin/env python3
# -*- coding: utf-8 -*-
from bs4 import BeautifulSoup
from urllib2 import Request, urlopen

from db_symbol import DbSymbol


symbols = DbSymbol.get_all()

for symbol in symbols:
    try:
        site = u"https://www.guiainvest.com.br/lista-acoes/default.aspx?listaacaopesquisa={}&listaacaopage=1".format(symbol["symbol"])
        hdr = {u'User-Agent': u'Mozilla/5.0'}
        req = Request(site, headers=hdr)
        page = urlopen(req)
    except HTTPError as ex:
        print(ex)
    except URLError as ex:
        print(ex)
    except Exception as ex:
        print(ex)
    else:
        bs = BeautifulSoup(page, "html.parser")
        table_body = bs.find('tbody')

        if (table_body is not None):
            rows = table_body.findAll('tr')

        for i, row in enumerate(rows):
            if (i > 0):
                continue

            cols = row.findAll('td')
            cols = [x.text.strip() for x in cols]

            if "Nenhuma informação encontrada.".decode('utf-8', 'ignore') not in cols[0]:
                DbSymbol.update(cols[1], symbol["symbol_id"])