from bs4 import BeautifulSoup
from requests import get 
from datetime import date

URL="https://www.otodom.pl/pl/oferty/sprzedaz/mieszkanie/gdansk?distanceRadius=0&market=ALL&ownerType=%5BAGENCY%2CPRIVATE%5D&page=1&limit=72&by=DEFAULT&direction=DESC&locations[0][regionId]=11&locations[0][cityId]=40&locations[0][subregionId]=439"
page = get(URL)
bs = BeautifulSoup(page.content, 'html.parser')

for offer in bs.find_all('li', class_="css-x9km8e es62z2j31"):
    name = offer.find('div', class_="css-mjiqa9 es62z2j26").get_text()
    location = offer.find('span', class_="css-17o293g es62z2j23").get_text()
    price = offer.find('p', class_="css-lk61n3 es62z2j20").get_text().strip(' \n\t')
    size = offer.find_all('span', class_="css-348r18 es62z2j21")[2].get_text()
    #links = offer.find_all(get('href'))
    #result = offer.find_all('a', class_="css-19ukcmm es62z2j29")[0].get('href')
    result = offer.find('a').attrs['href']
    #stronka = get(link["href"])
    link = "https://www.otodom.pl" + result
    #URL2 = "https://www.otodom.pl" + get(link["href"])
    page_details = get(link)

    #print(name, location, price, size, result)
    #print(page_details)

    bs2 = BeautifulSoup(page_details.content, 'html.parser')

    for details in bs2.find_all('div', class_="css-1d9dws4 egzohkh2"):
        rynek = details.find_all('div',class_="css-1ytkscc ev4i3ak0")[2].get_text()

        
    print(name, location, price, size, rynek, date.today()) 
 