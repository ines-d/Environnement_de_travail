#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Tue Jan  7 15:27:03 2020

@author: ines
"""

import pandas as pd
from sqlalchemy import create_engine 
import time
import pymysql



engine = create_engine("mysql+pymysql://root@localhost/SIRET")

def importcsv(link, table, date):
    print("Lecture des données")
    start_time = time.time()
    csize = 500
    df = pd.read_csv(link, compression = 'zip', chunksize = csize, parse_dates = date)
    print("Données lu")
    i = csize
    for chunk in df:
        chunk.to_sql(table, con = engine, if_exists='append', index = False)
        i += csize
        print(i)
    return print("Temps d execution : %s secondes ---" % (time.time() - start_time))

importcsv('https://www.data.gouv.fr/fr/datasets/r/377fd07c-e37f-491a-a507-7bf5b690804b', 'etablissement', ['dateCreationEtablissement', 'anneeEffectifsEtablissement', 'dateDernierTraitementEtablissement', 'dateDebut'])646
