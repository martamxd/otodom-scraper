import collections
import re

# ensure open path is correct or put in full path to text document
words = re.findall(r'\w+', open('data.txt').read().lower())
most_common = collections.Counter(words).most_common(20)
print(most_common)

# Python program to generate WordCloud

# importing all necessary modules
from wordcloud import WordCloud, STOPWORDS
import matplotlib.pyplot as plt
import pandas as pd

import pandas as pd
df = pd.read_csv('data.txt', delimiter = "\t")

comment_words = ''
stopwords = set(STOPWORDS)

# iterate through the csv file
for val in df:
	
	# typecaste each val to string
	val = str(val)

	# split the value
	tokens = val.split()
	
	# Converts each token into lowercase
	for i in range(len(tokens)):
		tokens[i] = tokens[i].lower()
	
	comment_words += " ".join(tokens)+" "

wordcloud = WordCloud(width = 800, height = 800,
				background_color ='white',
				stopwords = stopwords,
                collocations = False,
				min_font_size = 10).generate(comment_words)

# plot the WordCloud image					
plt.figure(figsize = (8, 8), facecolor = None)
plt.imshow(wordcloud)
plt.axis("off")
plt.tight_layout(pad = 0)

plt.show()