#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Thu Jan  9 13:46:15 2020

@author: ines
"""

import pandas as pd 
from sqlalchemy import create_engine
import pymysql

engine=create_engine('mysql+pymysql://root@localhost/SIRET')
 

df=pd.read_excel('/home/ines/Documents/projet_open_source/nomenclature_1973.xls',set='\t',skiprows=1)
df.to_sql('nomenclature_1973', con=engine, if_exists='replace',index=False)
print (df)