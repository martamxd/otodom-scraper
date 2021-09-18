import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
 
from os import path, getcwd
from PIL import Image
from wordcloud import WordCloud, STOPWORDS
import sqlite3
from collections import Counter

connection = sqlite3.connect("dane.db")
cursor = connection.cursor()

#create the pandas data frame
df = pd.read_sql('Select name from mieszkania', connection)


comment_words = ''
stopwords = set(STOPWORDS)


for val in df.name:
     
    # typecaste each val to string
    val = str(val)
 
    # split the value
    tokens = val.split()
     
    # Converts each token into lowercase
    for i in range(len(tokens)):
        tokens[i] = tokens[i].lower()
     
comment_words = [

 
# wordcloud = WordCloud(width = 800, height = 800,
#                 background_color ='white',
#                 stopwords = stopwords,
#                 min_font_size = 10).generate(comment_words)
 
# # plot the WordCloud image                      
# plt.figure(figsize = (8, 8), facecolor = None)
# plt.imshow(wordcloud)
# plt.axis("off")
# plt.tight_layout(pad = 0)
 
#plt.show()

# Pass the split_it list to instance of Counter class.
Counter = Counter(comment_words)
  
# most_common() produces k frequently encountered
# input values and their respective counts.
most_occur = Counter.most_common(10)
  
print(most_occur)