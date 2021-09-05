from bs4 import BeautifulSoup
from requests import get 
import sqlite3
from sys import argv
import pandas as pd
from datetime import date

def parse_page(number):
    print(f'strona{number}')
    page = get(f'{URL}&page={number}')
    bs = BeautifulSoup(page.content, 'html.parser')

    for offer in bs.find_all('li', class_="css-x9km8e es62z2j31"):
        name = offer.find('div', class_="css-mjiqa9 es62z2j26").get_text()
        location = offer.find('span', class_="css-17o293g es62z2j23").get_text()
        price = offer.find('p', class_="css-lk61n3 es62z2j20").get_text().strip(' \n\t')
        size = offer.find_all('span', class_="css-348r18 es62z2j21")[2].get_text()
        result = offer.find('a').attrs['href']
        link = "https://www.otodom.pl" + result

        page_details = get(link)
        bs2 = BeautifulSoup(page_details.content, 'html.parser')


        for details in bs2.find_all('div', class_="css-1d9dws4 egzohkh2"):
            rynek = details.find_all('div',class_="css-1ytkscc ev4i3ak0")[2].get_text()


        cursor.execute('INSERT into mieszkania VALUES(?,?,?,?,?,?)', (name, location, price, size, rynek, date.today()))
        db.commit()


URL="https://www.otodom.pl/pl/oferty/sprzedaz/mieszkanie/gdansk?distanceRadius=0&market=ALL&ownerType=%5BAGENCY%2CPRIVATE%5D&page=1&limit=72&by=DEFAULT&direction=DESC&locations[0][regionId]=11&locations[0][cityId]=40&locations[0][subregionId]=439"
db = sqlite3.connect('dane.db')
cursor = db.cursor()

if len(argv) > 1 and argv[1] == 'setup':
    cursor.execute('''CREATE TABLE mieszkania (name TEXT, location TEXT, price TEXT, size REAL, rynek TEXT, data TEXT) ''')
    quit()

for page in range(1, 50):
    parse_page(page)

db.close()
