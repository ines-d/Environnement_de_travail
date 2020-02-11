# -*- coding: utf-8 -*-
"""
Éditeur de Spyder

Ceci est un script temporaire.
"""

import pandas as pd
section_1993=pd.read_excel('/home/ines/Documents/projet_open_source/naf1993_liste_n1.xls',set='\t',  skiprows=1)
niv_1993=pd.read_excel('/home/ines/Documents/projet_open_source/naf1993_5_niveaux.xls',set='\t',skiprows=1)
section_2003=pd.read_excel('/home/ines/Documents/projet_open_source/naf2003_liste_n1.xls',set='\t', skiprows=1)
niv_2003=pd.read_excel('/home/ines/Documents/projet_open_source/naf2003_n1-5.xls',set='\t',skiprows=1)
section_2008=pd.read_excel('/home/ines/Documents/projet_open_source/naf2008_liste_n1.xls',set='\t',skiprows=[1,2])
niv_2008=pd.read_excel('/home/ines/Documents/projet_open_source/naf2008_5_niveaux.xls',set='\t')
nomenclature_1973=pd.read_excel('/home/ines/Documents/projet_open_source/nomenclature_1973.xls', set='\t')