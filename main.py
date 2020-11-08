from bs4 import BeautifulSoup
from requests import get 
import sqlite3
from sys import argv
import pandas as pd

def parse_price(price):
    return float(price.replace(' ','').replace('zł','').replace(',','.').replace('/mc',''))

def parse_page(number):
    page = get(f'{URL}&page={number}')
    bs = BeautifulSoup(page.content, 'html.parser')

    for offer in bs.find_all('div', class_="offer-item-details"):
        name = offer.find('span', class_="offer-item-title").get_text()
        kind ,location = offer.find('p', class_="text-nowrap").get_text().split(":")
        price = parse_price(offer.find('li', class_="offer-item-price").get_text().strip(' \n\t'))
        size = offer.find('strong',class_="visible-xs-block").get_text()
        link = offer.find('a')
        #break
        #print(name, location, price, size)

        cursor.execute('INSERT into offers VALUES(?,?,?,?)', (name, location, price, size))
        db.commit()


URL="https://www.otodom.pl/sprzedaz/gdansk/?search%5Bregion_id%5D=11&search%5Bcity_id%5D=40"
db = sqlite3.connect('dane.db')
cursor = db.cursor()

if len(argv) > 1 and argv[1] == 'setup':
    cursor.execute('''CREATE TABLE offers (name TEXT, location TEXT, price REAL, size REAL) ''')
    quit()

for page in range(1,51):
    parse_page(page)




db.close()

# page_details = get(link["href"])
# bs2 = BeautifulSoup(page_details.content, 'html.parser')


# for details in bs2.find_all('div', class_="css-dwmx8v-Fe"):
#     rent = details.find('strong').get_text()
#     year = details.find_all('strong')[9].get_text()
#     print(rent,year)
#     break

  
 

