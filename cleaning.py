#import numpy as np
import pandas as pd
#import matplotlib.pyplot as plt
import os, sys
#from os import path, getcwd
#from PIL import Image
#from wordcloud import WordCloud, STOPWORDS
import sqlite3
from collections import Counter
import nltk
import string
from nltk import word_tokenize
from stop_words import get_stop_words
from nltk.corpus import stopwords
from collections import defaultdict
import csv  



comment_words = ''
connection = sqlite3.connect("daneKW.db")
cursor = connection.cursor()

#create the pandas data frame
df = pd.read_sql('Select name from mieszkania', connection)

for val in df.name:
     
    # typecaste each val to string
    val = str(val)
 
    # split the value
    tokens = val.split()
     
    # Converts each token into lowercase
    for i in range(len(tokens)):
        tokens[i] = tokens[i].lower()

    comment_words += " ".join(tokens)+" "

tokenized_docs = [word_tokenize(comment_words)]

import re
regex = re.compile('[%s]' % re.escape(string.punctuation)) 
tokenized_docs_no_punctuation = []

for review in tokenized_docs:
    new_review = []
    for token in review:
        new_token = regex.sub(u'', token)
        if not new_token == u'':
            new_review.append(new_token)
        
    tokenized_docs_no_punctuation.append(new_review)

stopwords = ['z','w','na','m','i','od','do','dla','l','k','r','ul','by','po','we','przy','m2','lub','nad','gd','ze','h1','g2','h2','on','pod','e','m²']

tokenized_docs_no_stopwords = []

for doc in tokenized_docs_no_punctuation:
    new_term_vector = []
    for word in doc:
        if not word in stopwords:
            new_term_vector.append(word)
        
    tokenized_docs_no_stopwords.append(new_term_vector)

import unidecode
 
# assign string
stringList =  tokenized_docs_no_stopwords
normal = unicodedata.normalize('NFKD', data.csv).encode('ASCII', 'ignore')
 
# for i in range(len(stringList)):
#     # remove ascents
#     stringList[i] = unidecode.unidecode(stringList[i])
 
# # display new string
# print(stringList)

# with open('data.csv', 'w', encoding='UTF8') as f:
#     writer = csv.writer(f)

#     # write the data
#     writer.writerow(tokenized_docs_no_stopwords)


# with open('data.txt', 'w', encoding='utf-8') as f:
#     f.write(tokenized_docs_no_stopwords)

