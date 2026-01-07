#**************Matplotlib Assignment*********************
#1) create first array "overs" with 4 elements
# 5,10,15,20
# create another array "runs_scored" with 4 elements and store
# no.of runs scored at the end of each over
# e.g.  40 runs at the end of 5th over , 75 runs at the end of 10th over etc.
# now create a line plot to show the relationship between "overs" and "runs_scored"

"""from numpy import *
from matplotlib import pyplot as py
overs=arange(5,25,5)
print(overs)
runs_scored=[40,75,120,165]
print(runs_scored)
py.plot(overs,runs_scored)
py.title("Run_Scored on Overs")
py.xlabel("overs")
py.ylabel("Run_Scored")
py.show()"""

#2) create a Bar plot to show how many people like "Action","Romance","Comedy" or
# "Drama" movies.

"""from numpy import *
from matplotlib import pyplot as py
people=[20,10,50,60]
movies=["Action","Romance","Comedy","Drama"]
py.bar(movies,people,color="teal")
py.title("People likes movies")
py.xlabel("People")
py.ylabel("Movies")
py.show()"""

#3) create a piechart to show popularity of various modules (Java,Python etc.)
"""from matplotlib import pyplot as py
modules = ['Java', 'Python', 'Machine Learning', 'SQL']
popularity = [30, 45, 60, 25]
py.pie(popularity, labels=modules, autopct='%1.1f%%', startangle=140)
py.title("Popularity of Various Modules")
py.axis('equal')
py.legend(modules, title="Modules", loc="center left", bbox_to_anchor=(1, 0.5))

py.tight_layout()
py.show()"""

 #********************