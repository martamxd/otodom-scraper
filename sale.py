from bs4 import BeautifulSoup
from requests import get 
import sqlite3
from sys import argv
import pandas as pd

def parse_page(number):
    print(f'strona{number}')
    page = get(f'{URL}&page={number}')
    bs = BeautifulSoup(page.content, 'html.parser')

    for offer in bs.find_all('div', class_="offer-item-details"):
        name = offer.find('span', class_="offer-item-title").get_text()
        kind ,location = offer.find('p', class_="text-nowrap").get_text().split(":")
        price = offer.find('li', class_="offer-item-price").get_text().strip(' \n\t')
        size = offer.find('strong',class_="visible-xs-block").get_text()
        link = offer.find('a')
    
        page_details = get(link["href"])
        bs2 = BeautifulSoup(page_details.content, 'html.parser')


        for details in bs2.find_all('div', class_="css-2wxlkt"):
            rynek = details.find_all('div',class_="css-1s5nyln")[2].get_text()

        cursor.execute('INSERT into mieszkania VALUES(?,?,?,?,?)', (name, location, price, size, rynek))
        db.commit()


URL="https://www.otodom.pl/sprzedaz/mieszkanie/gdansk/?search%5Bregion_id%5D=11&search%5Bcity_id%5D=40&nrAdsPerPage=72"
db = sqlite3.connect('dane.db')
cursor = db.cursor()

if len(argv) > 1 and argv[1] == 'setup':
    cursor.execute('''CREATE TABLE mieszkania (name TEXT, location TEXT, price TEXT, size REAL, rynek TEXT) ''')
    quit()

for page in range(1, 50):
    parse_page(page)

db.close()
