#!/usr/bin/env python
# coding: utf-8

# In[1]:


import numpy as np
import pandas as pd
import matplotlib.pyplot as plt


# In[4]:


df=pd.read_csv('yogeshree chandankhede - CarPrice.csv')
df


# In[5]:


df.isna().sum()


# In[6]:


df.corr()


# In[12]:


df_cleaned = df.drop(['car_ID', 'CarName'], axis=1) # Drop irrelevant column


# In[62]:


print(df.dtypes)


# In[13]:


df['horsepower'] = pd.to_numeric(df['horsepower'], errors='coerce') #Fix datatype issues
df['peakrpm'] = pd.to_numeric(df['peakrpm'], errors='coerce')


# In[14]:


df.fillna(df.mean(numeric_only=True), inplace=True) #missing values


# In[15]:


df_encoded = pd.get_dummies(df, drop_first=True)# One-hot encode categorical variables


# In[16]:


X = df_encoded.drop('price', axis=1) # One-hot encode categorical variables
y = df_encoded['price']


# In[83]:


# Train/Test Split
from sklearn.model_selection import train_test_split
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=15)


# In[84]:


# Train LR
from sklearn.linear_model import LinearRegression
model = LinearRegression()
model.fit(X_train, y_train)


# In[85]:


#  Predict 
from sklearn.metrics import mean_squared_error, mean_absolute_error, r2_score
y_pred = model.predict(X_test)


# In[86]:


mse = mean_squared_error(y_test, y_pred)
mae = mean_absolute_error(y_test, y_pred)
r2 = r2_score(y_test, y_pred)


# In[87]:


print("MSE:", mse)
print("MAE:", mae)
print("R² Score:", r2)


# In[ ]:




