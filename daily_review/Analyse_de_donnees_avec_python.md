```python
# importer un fichier csv avec le paramètre "encoding='latin-1'" 
import pandas as pd

data = pd.read_csv('/home/ines/Documents/thanksgiving.csv', encoding='latin-1')

print (data)
```

          RespondentID Do you celebrate Thanksgiving?  \
    0       4337954960                            Yes   
    1       4337951949                            Yes   
    2       4337935621                            Yes   
    3       4337933040                            Yes   
    4       4337931983                            Yes   
    ...            ...                            ...   
    1053    4335944082                            Yes   
    1054    4335943173                            Yes   
    1055    4335943060                            Yes   
    1056    4335934708                            Yes   
    1057    4335894916                            Yes   
    
         What is typically the main dish at your Thanksgiving dinner?  \
    0                                                Turkey             
    1                                                Turkey             
    2                                                Turkey             
    3                                                Turkey             
    4                                              Tofurkey             
    ...                                                 ...             
    1053                                             Turkey             
    1054                                             Turkey             
    1055                             Other (please specify)             
    1056                                             Turkey             
    1057                                             Turkey             
    
         What is typically the main dish at your Thanksgiving dinner? - Other (please specify)  \
    0                                                   NaN                                      
    1                                                   NaN                                      
    2                                                   NaN                                      
    3                                                   NaN                                      
    4                                                   NaN                                      
    ...                                                 ...                                      
    1053                                                NaN                                      
    1054                                                NaN                                      
    1055                                               Duck                                      
    1056                                                NaN                                      
    1057                                                NaN                                      
    
         How is the main dish typically cooked?  \
    0                                     Baked   
    1                                     Baked   
    2                                   Roasted   
    3                                     Baked   
    4                                     Baked   
    ...                                     ...   
    1053                                Roasted   
    1054                                  Baked   
    1055                                  Baked   
    1056                                  Baked   
    1057                                  Baked   
    
         How is the main dish typically cooked? - Other (please specify)  \
    0                                                   NaN                
    1                                                   NaN                
    2                                                   NaN                
    3                                                   NaN                
    4                                                   NaN                
    ...                                                 ...                
    1053                                                NaN                
    1054                                                NaN                
    1055                                                NaN                
    1056                                                NaN                
    1057                                                NaN                
    
         What kind of stuffing/dressing do you typically have?  \
    0                                           Bread-based      
    1                                           Bread-based      
    2                                            Rice-based      
    3                                           Bread-based      
    4                                           Bread-based      
    ...                                                 ...      
    1053                                        Bread-based      
    1054                                        Bread-based      
    1055                                         Rice-based      
    1056                                               None      
    1057                                        Bread-based      
    
         What kind of stuffing/dressing do you typically have? - Other (please specify)  \
    0                                                   NaN                               
    1                                                   NaN                               
    2                                                   NaN                               
    3                                                   NaN                               
    4                                                   NaN                               
    ...                                                 ...                               
    1053                                                NaN                               
    1054                                                NaN                               
    1055                                                NaN                               
    1056                                                NaN                               
    1057                                                NaN                               
    
         What type of cranberry saucedo you typically have?  \
    0                                                  None   
    1                                Other (please specify)   
    2                                              Homemade   
    3                                              Homemade   
    4                                                Canned   
    ...                                                 ...   
    1053                                           Homemade   
    1054                                             Canned   
    1055                                               None   
    1056                                           Homemade   
    1057                                             Canned   
    
         What type of cranberry saucedo you typically have? - Other (please specify)  \
    0                                                   NaN                            
    1                       Homemade cranberry gelatin ring                            
    2                                                   NaN                            
    3                                                   NaN                            
    4                                                   NaN                            
    ...                                                 ...                            
    1053                                                NaN                            
    1054                                                NaN                            
    1055                                                NaN                            
    1056                                                NaN                            
    1057                                                NaN                            
    
          ...  \
    0     ...   
    1     ...   
    2     ...   
    3     ...   
    4     ...   
    ...   ...   
    1053  ...   
    1054  ...   
    1055  ...   
    1056  ...   
    1057  ...   
    
         Have you ever tried to meet up with hometown friends on Thanksgiving night?  \
    0                                                   Yes                            
    1                                                    No                            
    2                                                   Yes                            
    3                                                   Yes                            
    4                                                   Yes                            
    ...                                                 ...                            
    1053                                                Yes                            
    1054                                                 No                            
    1055                                                Yes                            
    1056                                                Yes                            
    1057                                                Yes                            
    
         Have you ever attended a "Friendsgiving?"  \
    0                                           No   
    1                                           No   
    2                                          Yes   
    3                                           No   
    4                                           No   
    ...                                        ...   
    1053                                       Yes   
    1054                                        No   
    1055                                       Yes   
    1056                                        No   
    1057                                       Yes   
    
         Will you shop any Black Friday sales on Thanksgiving Day?  \
    0                                                    No          
    1                                                   Yes          
    2                                                   Yes          
    3                                                    No          
    4                                                    No          
    ...                                                 ...          
    1053                                                 No          
    1054                                                 No          
    1055                                                Yes          
    1056                                                Yes          
    1057                                                Yes          
    
         Do you work in retail? Will you employer make you work on Black Friday?  \
    0                        No                                              NaN   
    1                        No                                              NaN   
    2                        No                                              NaN   
    3                        No                                              NaN   
    4                        No                                              NaN   
    ...                     ...                                              ...   
    1053                     No                                              NaN   
    1054                     No                                              NaN   
    1055                     No                                              NaN   
    1056                    Yes                                              Yes   
    1057                     No                                              NaN   
    
         How would you describe where you live?      Age What is your gender?  \
    0                                  Suburban  18 - 29                 Male   
    1                                     Rural  18 - 29               Female   
    2                                  Suburban  18 - 29                 Male   
    3                                     Urban  30 - 44                 Male   
    4                                     Urban  30 - 44                 Male   
    ...                                     ...      ...                  ...   
    1053                                  Rural  30 - 44               Female   
    1054                               Suburban      60+               Female   
    1055                                  Urban      60+                 Male   
    1056                                    NaN      NaN                  NaN   
    1057                                    NaN      NaN                  NaN   
    
         How much total combined money did all members of your HOUSEHOLD earn last year?  \
    0                                    $75,000 to $99,999                                
    1                                    $50,000 to $74,999                                
    2                                          $0 to $9,999                                
    3                                       $200,000 and up                                
    4                                  $100,000 to $124,999                                
    ...                                                 ...                                
    1053                               $100,000 to $124,999                                
    1054                                 $50,000 to $74,999                                
    1055                               $100,000 to $124,999                                
    1056                                                NaN                                
    1057                                                NaN                                
    
                   US Region  
    0        Middle Atlantic  
    1     East South Central  
    2               Mountain  
    3                Pacific  
    4                Pacific  
    ...                  ...  
    1053            Mountain  
    1054             Pacific  
    1055             Pacific  
    1056                 NaN  
    1057                 NaN  
    
    [1058 rows x 65 columns]



```python
# méthode pour afficher les premières lignes d'un dataframe

data.head(5) # (les dernieres lignes df.tail(n))
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>RespondentID</th>
      <th>Do you celebrate Thanksgiving?</th>
      <th>What is typically the main dish at your Thanksgiving dinner?</th>
      <th>What is typically the main dish at your Thanksgiving dinner? - Other (please specify)</th>
      <th>How is the main dish typically cooked?</th>
      <th>How is the main dish typically cooked? - Other (please specify)</th>
      <th>What kind of stuffing/dressing do you typically have?</th>
      <th>What kind of stuffing/dressing do you typically have? - Other (please specify)</th>
      <th>What type of cranberry saucedo you typically have?</th>
      <th>What type of cranberry saucedo you typically have? - Other (please specify)</th>
      <th>...</th>
      <th>Have you ever tried to meet up with hometown friends on Thanksgiving night?</th>
      <th>Have you ever attended a "Friendsgiving?"</th>
      <th>Will you shop any Black Friday sales on Thanksgiving Day?</th>
      <th>Do you work in retail?</th>
      <th>Will you employer make you work on Black Friday?</th>
      <th>How would you describe where you live?</th>
      <th>Age</th>
      <th>What is your gender?</th>
      <th>How much total combined money did all members of your HOUSEHOLD earn last year?</th>
      <th>US Region</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>0</td>
      <td>4337954960</td>
      <td>Yes</td>
      <td>Turkey</td>
      <td>NaN</td>
      <td>Baked</td>
      <td>NaN</td>
      <td>Bread-based</td>
      <td>NaN</td>
      <td>None</td>
      <td>NaN</td>
      <td>...</td>
      <td>Yes</td>
      <td>No</td>
      <td>No</td>
      <td>No</td>
      <td>NaN</td>
      <td>Suburban</td>
      <td>18 - 29</td>
      <td>Male</td>
      <td>$75,000 to $99,999</td>
      <td>Middle Atlantic</td>
    </tr>
    <tr>
      <td>1</td>
      <td>4337951949</td>
      <td>Yes</td>
      <td>Turkey</td>
      <td>NaN</td>
      <td>Baked</td>
      <td>NaN</td>
      <td>Bread-based</td>
      <td>NaN</td>
      <td>Other (please specify)</td>
      <td>Homemade cranberry gelatin ring</td>
      <td>...</td>
      <td>No</td>
      <td>No</td>
      <td>Yes</td>
      <td>No</td>
      <td>NaN</td>
      <td>Rural</td>
      <td>18 - 29</td>
      <td>Female</td>
      <td>$50,000 to $74,999</td>
      <td>East South Central</td>
    </tr>
    <tr>
      <td>2</td>
      <td>4337935621</td>
      <td>Yes</td>
      <td>Turkey</td>
      <td>NaN</td>
      <td>Roasted</td>
      <td>NaN</td>
      <td>Rice-based</td>
      <td>NaN</td>
      <td>Homemade</td>
      <td>NaN</td>
      <td>...</td>
      <td>Yes</td>
      <td>Yes</td>
      <td>Yes</td>
      <td>No</td>
      <td>NaN</td>
      <td>Suburban</td>
      <td>18 - 29</td>
      <td>Male</td>
      <td>$0 to $9,999</td>
      <td>Mountain</td>
    </tr>
    <tr>
      <td>3</td>
      <td>4337933040</td>
      <td>Yes</td>
      <td>Turkey</td>
      <td>NaN</td>
      <td>Baked</td>
      <td>NaN</td>
      <td>Bread-based</td>
      <td>NaN</td>
      <td>Homemade</td>
      <td>NaN</td>
      <td>...</td>
      <td>Yes</td>
      <td>No</td>
      <td>No</td>
      <td>No</td>
      <td>NaN</td>
      <td>Urban</td>
      <td>30 - 44</td>
      <td>Male</td>
      <td>$200,000 and up</td>
      <td>Pacific</td>
    </tr>
    <tr>
      <td>4</td>
      <td>4337931983</td>
      <td>Yes</td>
      <td>Tofurkey</td>
      <td>NaN</td>
      <td>Baked</td>
      <td>NaN</td>
      <td>Bread-based</td>
      <td>NaN</td>
      <td>Canned</td>
      <td>NaN</td>
      <td>...</td>
      <td>Yes</td>
      <td>No</td>
      <td>No</td>
      <td>No</td>
      <td>NaN</td>
      <td>Urban</td>
      <td>30 - 44</td>
      <td>Male</td>
      <td>$100,000 to $124,999</td>
      <td>Pacific</td>
    </tr>
  </tbody>
</table>
<p>5 rows × 65 columns</p>
</div>




```python
# afficher le nom des colonnes avec l'attribut columns

data.columns
```




    Index(['RespondentID', 'Do you celebrate Thanksgiving?',
           'What is typically the main dish at your Thanksgiving dinner?',
           'What is typically the main dish at your Thanksgiving dinner? - Other (please specify)',
           'How is the main dish typically cooked?',
           'How is the main dish typically cooked? - Other (please specify)',
           'What kind of stuffing/dressing do you typically have?',
           'What kind of stuffing/dressing do you typically have? - Other (please specify)',
           'What type of cranberry saucedo you typically have?',
           'What type of cranberry saucedo you typically have? - Other (please specify)',
           'Do you typically have gravy?',
           'Which of these side dishes aretypically served at your Thanksgiving dinner? Please select all that apply. - Brussel sprouts',
           'Which of these side dishes aretypically served at your Thanksgiving dinner? Please select all that apply. - Carrots',
           'Which of these side dishes aretypically served at your Thanksgiving dinner? Please select all that apply. - Cauliflower',
           'Which of these side dishes aretypically served at your Thanksgiving dinner? Please select all that apply. - Corn',
           'Which of these side dishes aretypically served at your Thanksgiving dinner? Please select all that apply. - Cornbread',
           'Which of these side dishes aretypically served at your Thanksgiving dinner? Please select all that apply. - Fruit salad',
           'Which of these side dishes aretypically served at your Thanksgiving dinner? Please select all that apply. - Green beans/green bean casserole',
           'Which of these side dishes aretypically served at your Thanksgiving dinner? Please select all that apply. - Macaroni and cheese',
           'Which of these side dishes aretypically served at your Thanksgiving dinner? Please select all that apply. - Mashed potatoes',
           'Which of these side dishes aretypically served at your Thanksgiving dinner? Please select all that apply. - Rolls/biscuits',
           'Which of these side dishes aretypically served at your Thanksgiving dinner? Please select all that apply. - Squash',
           'Which of these side dishes aretypically served at your Thanksgiving dinner? Please select all that apply. - Vegetable salad',
           'Which of these side dishes aretypically served at your Thanksgiving dinner? Please select all that apply. - Yams/sweet potato casserole',
           'Which of these side dishes aretypically served at your Thanksgiving dinner? Please select all that apply. - Other (please specify)',
           'Which of these side dishes aretypically served at your Thanksgiving dinner? Please select all that apply. - Other (please specify).1',
           'Which type of pie is typically served at your Thanksgiving dinner? Please select all that apply. - Apple',
           'Which type of pie is typically served at your Thanksgiving dinner? Please select all that apply. - Buttermilk',
           'Which type of pie is typically served at your Thanksgiving dinner? Please select all that apply. - Cherry',
           'Which type of pie is typically served at your Thanksgiving dinner? Please select all that apply. - Chocolate',
           'Which type of pie is typically served at your Thanksgiving dinner? Please select all that apply. - Coconut cream',
           'Which type of pie is typically served at your Thanksgiving dinner? Please select all that apply. - Key lime',
           'Which type of pie is typically served at your Thanksgiving dinner? Please select all that apply. - Peach',
           'Which type of pie is typically served at your Thanksgiving dinner? Please select all that apply. - Pecan',
           'Which type of pie is typically served at your Thanksgiving dinner? Please select all that apply. - Pumpkin',
           'Which type of pie is typically served at your Thanksgiving dinner? Please select all that apply. - Sweet Potato',
           'Which type of pie is typically served at your Thanksgiving dinner? Please select all that apply. - None',
           'Which type of pie is typically served at your Thanksgiving dinner? Please select all that apply. - Other (please specify)',
           'Which type of pie is typically served at your Thanksgiving dinner? Please select all that apply. - Other (please specify).1',
           'Which of these desserts do you typically have at Thanksgiving dinner? Please select all that apply.   - Apple cobbler',
           'Which of these desserts do you typically have at Thanksgiving dinner? Please select all that apply.   - Blondies',
           'Which of these desserts do you typically have at Thanksgiving dinner? Please select all that apply.   - Brownies',
           'Which of these desserts do you typically have at Thanksgiving dinner? Please select all that apply.   - Carrot cake',
           'Which of these desserts do you typically have at Thanksgiving dinner? Please select all that apply.   - Cheesecake',
           'Which of these desserts do you typically have at Thanksgiving dinner? Please select all that apply.   - Cookies',
           'Which of these desserts do you typically have at Thanksgiving dinner? Please select all that apply.   - Fudge',
           'Which of these desserts do you typically have at Thanksgiving dinner? Please select all that apply.   - Ice cream',
           'Which of these desserts do you typically have at Thanksgiving dinner? Please select all that apply.   - Peach cobbler',
           'Which of these desserts do you typically have at Thanksgiving dinner? Please select all that apply.   - None',
           'Which of these desserts do you typically have at Thanksgiving dinner? Please select all that apply.   - Other (please specify)',
           'Which of these desserts do you typically have at Thanksgiving dinner? Please select all that apply.   - Other (please specify).1',
           'Do you typically pray before or after the Thanksgiving meal?',
           'How far will you travel for Thanksgiving?',
           'Will you watch any of the following programs on Thanksgiving? Please select all that apply. - Macy's Parade',
           'What's the age cutoff at your "kids' table" at Thanksgiving?',
           'Have you ever tried to meet up with hometown friends on Thanksgiving night?',
           'Have you ever attended a "Friendsgiving?"',
           'Will you shop any Black Friday sales on Thanksgiving Day?',
           'Do you work in retail?',
           'Will you employer make you work on Black Friday?',
           'How would you describe where you live?', 'Age', 'What is your gender?',
           'How much total combined money did all members of your HOUSEHOLD earn last year?',
           'US Region'],
          dtype='object')




```python
import pandas as pd
sr=pd.Series(data.columns)
sr.value_counts()

```




    Which type of pie is typically served at your Thanksgiving dinner? Please select all that apply. - Key lime                       0.015385
    How far will you travel for Thanksgiving?                                                                                         0.015385
    Which of these side dishes aretypically served at your Thanksgiving dinner? Please select all that apply. - Fruit salad           0.015385
    Which of these side dishes aretypically served at your Thanksgiving dinner? Please select all that apply. - Mashed potatoes       0.015385
    Which type of pie is typically served at your Thanksgiving dinner? Please select all that apply. - Coconut cream                  0.015385
                                                                                                                                        ...   
    What type of cranberry saucedo you typically have? - Other (please specify)                                                       0.015385
    What kind of stuffing/dressing do you typically have?                                                                             0.015385
    How is the main dish typically cooked?                                                                                            0.015385
    Which of these desserts do you typically have at Thanksgiving dinner? Please select all that apply.   - None                      0.015385
    Which of these desserts do you typically have at Thanksgiving dinner? Please select all that apply.   - Other (please specify)    0.015385
    Length: 65, dtype: float64




```python
# Utiliser la méthode Series.values_count() pour afficher le décompte
#du nombre de réponses pour chacune des modalités de la colonnes
#« Do you celebrate Thanksgiving? »

import pandas as pd
sr=pd.Series(data['Do you celebrate Thanksgiving?'])
sr.value_counts()
```




    Yes    980
    No      78
    Name: Do you celebrate Thanksgiving?, dtype: int64




```python
#Filtrer et garder toute les ligne du dataframe pour lesquelles la
#réponse à la question « Do you celebrate Thanksgiving? » est « Yes ».

print(data.loc[data["Do you celebrate Thanksgiving?"]=="Yes",:])

```

          RespondentID Do you celebrate Thanksgiving?  \
    0       4337954960                            Yes   
    1       4337951949                            Yes   
    2       4337935621                            Yes   
    3       4337933040                            Yes   
    4       4337931983                            Yes   
    ...            ...                            ...   
    1053    4335944082                            Yes   
    1054    4335943173                            Yes   
    1055    4335943060                            Yes   
    1056    4335934708                            Yes   
    1057    4335894916                            Yes   
    
         What is typically the main dish at your Thanksgiving dinner?  \
    0                                                Turkey             
    1                                                Turkey             
    2                                                Turkey             
    3                                                Turkey             
    4                                              Tofurkey             
    ...                                                 ...             
    1053                                             Turkey             
    1054                                             Turkey             
    1055                             Other (please specify)             
    1056                                             Turkey             
    1057                                             Turkey             
    
         What is typically the main dish at your Thanksgiving dinner? - Other (please specify)  \
    0                                                   NaN                                      
    1                                                   NaN                                      
    2                                                   NaN                                      
    3                                                   NaN                                      
    4                                                   NaN                                      
    ...                                                 ...                                      
    1053                                                NaN                                      
    1054                                                NaN                                      
    1055                                               Duck                                      
    1056                                                NaN                                      
    1057                                                NaN                                      
    
         How is the main dish typically cooked?  \
    0                                     Baked   
    1                                     Baked   
    2                                   Roasted   
    3                                     Baked   
    4                                     Baked   
    ...                                     ...   
    1053                                Roasted   
    1054                                  Baked   
    1055                                  Baked   
    1056                                  Baked   
    1057                                  Baked   
    
         How is the main dish typically cooked? - Other (please specify)  \
    0                                                   NaN                
    1                                                   NaN                
    2                                                   NaN                
    3                                                   NaN                
    4                                                   NaN                
    ...                                                 ...                
    1053                                                NaN                
    1054                                                NaN                
    1055                                                NaN                
    1056                                                NaN                
    1057                                                NaN                
    
         What kind of stuffing/dressing do you typically have?  \
    0                                           Bread-based      
    1                                           Bread-based      
    2                                            Rice-based      
    3                                           Bread-based      
    4                                           Bread-based      
    ...                                                 ...      
    1053                                        Bread-based      
    1054                                        Bread-based      
    1055                                         Rice-based      
    1056                                               None      
    1057                                        Bread-based      
    
         What kind of stuffing/dressing do you typically have? - Other (please specify)  \
    0                                                   NaN                               
    1                                                   NaN                               
    2                                                   NaN                               
    3                                                   NaN                               
    4                                                   NaN                               
    ...                                                 ...                               
    1053                                                NaN                               
    1054                                                NaN                               
    1055                                                NaN                               
    1056                                                NaN                               
    1057                                                NaN                               
    
         What type of cranberry saucedo you typically have?  \
    0                                                  None   
    1                                Other (please specify)   
    2                                              Homemade   
    3                                              Homemade   
    4                                                Canned   
    ...                                                 ...   
    1053                                           Homemade   
    1054                                             Canned   
    1055                                               None   
    1056                                           Homemade   
    1057                                             Canned   
    
         What type of cranberry saucedo you typically have? - Other (please specify)  \
    0                                                   NaN                            
    1                       Homemade cranberry gelatin ring                            
    2                                                   NaN                            
    3                                                   NaN                            
    4                                                   NaN                            
    ...                                                 ...                            
    1053                                                NaN                            
    1054                                                NaN                            
    1055                                                NaN                            
    1056                                                NaN                            
    1057                                                NaN                            
    
          ...  \
    0     ...   
    1     ...   
    2     ...   
    3     ...   
    4     ...   
    ...   ...   
    1053  ...   
    1054  ...   
    1055  ...   
    1056  ...   
    1057  ...   
    
         Have you ever tried to meet up with hometown friends on Thanksgiving night?  \
    0                                                   Yes                            
    1                                                    No                            
    2                                                   Yes                            
    3                                                   Yes                            
    4                                                   Yes                            
    ...                                                 ...                            
    1053                                                Yes                            
    1054                                                 No                            
    1055                                                Yes                            
    1056                                                Yes                            
    1057                                                Yes                            
    
         Have you ever attended a "Friendsgiving?"  \
    0                                           No   
    1                                           No   
    2                                          Yes   
    3                                           No   
    4                                           No   
    ...                                        ...   
    1053                                       Yes   
    1054                                        No   
    1055                                       Yes   
    1056                                        No   
    1057                                       Yes   
    
         Will you shop any Black Friday sales on Thanksgiving Day?  \
    0                                                    No          
    1                                                   Yes          
    2                                                   Yes          
    3                                                    No          
    4                                                    No          
    ...                                                 ...          
    1053                                                 No          
    1054                                                 No          
    1055                                                Yes          
    1056                                                Yes          
    1057                                                Yes          
    
         Do you work in retail? Will you employer make you work on Black Friday?  \
    0                        No                                              NaN   
    1                        No                                              NaN   
    2                        No                                              NaN   
    3                        No                                              NaN   
    4                        No                                              NaN   
    ...                     ...                                              ...   
    1053                     No                                              NaN   
    1054                     No                                              NaN   
    1055                     No                                              NaN   
    1056                    Yes                                              Yes   
    1057                     No                                              NaN   
    
         How would you describe where you live?      Age What is your gender?  \
    0                                  Suburban  18 - 29                 Male   
    1                                     Rural  18 - 29               Female   
    2                                  Suburban  18 - 29                 Male   
    3                                     Urban  30 - 44                 Male   
    4                                     Urban  30 - 44                 Male   
    ...                                     ...      ...                  ...   
    1053                                  Rural  30 - 44               Female   
    1054                               Suburban      60+               Female   
    1055                                  Urban      60+                 Male   
    1056                                    NaN      NaN                  NaN   
    1057                                    NaN      NaN                  NaN   
    
         How much total combined money did all members of your HOUSEHOLD earn last year?  \
    0                                    $75,000 to $99,999                                
    1                                    $50,000 to $74,999                                
    2                                          $0 to $9,999                                
    3                                       $200,000 and up                                
    4                                  $100,000 to $124,999                                
    ...                                                 ...                                
    1053                               $100,000 to $124,999                                
    1054                                 $50,000 to $74,999                                
    1055                               $100,000 to $124,999                                
    1056                                                NaN                                
    1057                                                NaN                                
    
                   US Region  
    0        Middle Atlantic  
    1     East South Central  
    2               Mountain  
    3                Pacific  
    4                Pacific  
    ...                  ...  
    1053            Mountain  
    1054             Pacific  
    1055             Pacific  
    1056                 NaN  
    1057                 NaN  
    
    [980 rows x 65 columns]



```python
# Assigner ce nouveau dataframe à data et affiché le.
data=data.loc[data["Do you celebrate Thanksgiving?"]=="Yes",:]
print(data)

```

          RespondentID Do you celebrate Thanksgiving?  \
    0       4337954960                            Yes   
    1       4337951949                            Yes   
    2       4337935621                            Yes   
    3       4337933040                            Yes   
    4       4337931983                            Yes   
    ...            ...                            ...   
    1053    4335944082                            Yes   
    1054    4335943173                            Yes   
    1055    4335943060                            Yes   
    1056    4335934708                            Yes   
    1057    4335894916                            Yes   
    
         What is typically the main dish at your Thanksgiving dinner?  \
    0                                                Turkey             
    1                                                Turkey             
    2                                                Turkey             
    3                                                Turkey             
    4                                              Tofurkey             
    ...                                                 ...             
    1053                                             Turkey             
    1054                                             Turkey             
    1055                             Other (please specify)             
    1056                                             Turkey             
    1057                                             Turkey             
    
         What is typically the main dish at your Thanksgiving dinner? - Other (please specify)  \
    0                                                   NaN                                      
    1                                                   NaN                                      
    2                                                   NaN                                      
    3                                                   NaN                                      
    4                                                   NaN                                      
    ...                                                 ...                                      
    1053                                                NaN                                      
    1054                                                NaN                                      
    1055                                               Duck                                      
    1056                                                NaN                                      
    1057                                                NaN                                      
    
         How is the main dish typically cooked?  \
    0                                     Baked   
    1                                     Baked   
    2                                   Roasted   
    3                                     Baked   
    4                                     Baked   
    ...                                     ...   
    1053                                Roasted   
    1054                                  Baked   
    1055                                  Baked   
    1056                                  Baked   
    1057                                  Baked   
    
         How is the main dish typically cooked? - Other (please specify)  \
    0                                                   NaN                
    1                                                   NaN                
    2                                                   NaN                
    3                                                   NaN                
    4                                                   NaN                
    ...                                                 ...                
    1053                                                NaN                
    1054                                                NaN                
    1055                                                NaN                
    1056                                                NaN                
    1057                                                NaN                
    
         What kind of stuffing/dressing do you typically have?  \
    0                                           Bread-based      
    1                                           Bread-based      
    2                                            Rice-based      
    3                                           Bread-based      
    4                                           Bread-based      
    ...                                                 ...      
    1053                                        Bread-based      
    1054                                        Bread-based      
    1055                                         Rice-based      
    1056                                               None      
    1057                                        Bread-based      
    
         What kind of stuffing/dressing do you typically have? - Other (please specify)  \
    0                                                   NaN                               
    1                                                   NaN                               
    2                                                   NaN                               
    3                                                   NaN                               
    4                                                   NaN                               
    ...                                                 ...                               
    1053                                                NaN                               
    1054                                                NaN                               
    1055                                                NaN                               
    1056                                                NaN                               
    1057                                                NaN                               
    
         What type of cranberry saucedo you typically have?  \
    0                                                  None   
    1                                Other (please specify)   
    2                                              Homemade   
    3                                              Homemade   
    4                                                Canned   
    ...                                                 ...   
    1053                                           Homemade   
    1054                                             Canned   
    1055                                               None   
    1056                                           Homemade   
    1057                                             Canned   
    
         What type of cranberry saucedo you typically have? - Other (please specify)  \
    0                                                   NaN                            
    1                       Homemade cranberry gelatin ring                            
    2                                                   NaN                            
    3                                                   NaN                            
    4                                                   NaN                            
    ...                                                 ...                            
    1053                                                NaN                            
    1054                                                NaN                            
    1055                                                NaN                            
    1056                                                NaN                            
    1057                                                NaN                            
    
          ...  \
    0     ...   
    1     ...   
    2     ...   
    3     ...   
    4     ...   
    ...   ...   
    1053  ...   
    1054  ...   
    1055  ...   
    1056  ...   
    1057  ...   
    
         Have you ever tried to meet up with hometown friends on Thanksgiving night?  \
    0                                                   Yes                            
    1                                                    No                            
    2                                                   Yes                            
    3                                                   Yes                            
    4                                                   Yes                            
    ...                                                 ...                            
    1053                                                Yes                            
    1054                                                 No                            
    1055                                                Yes                            
    1056                                                Yes                            
    1057                                                Yes                            
    
         Have you ever attended a "Friendsgiving?"  \
    0                                           No   
    1                                           No   
    2                                          Yes   
    3                                           No   
    4                                           No   
    ...                                        ...   
    1053                                       Yes   
    1054                                        No   
    1055                                       Yes   
    1056                                        No   
    1057                                       Yes   
    
         Will you shop any Black Friday sales on Thanksgiving Day?  \
    0                                                    No          
    1                                                   Yes          
    2                                                   Yes          
    3                                                    No          
    4                                                    No          
    ...                                                 ...          
    1053                                                 No          
    1054                                                 No          
    1055                                                Yes          
    1056                                                Yes          
    1057                                                Yes          
    
         Do you work in retail? Will you employer make you work on Black Friday?  \
    0                        No                                              NaN   
    1                        No                                              NaN   
    2                        No                                              NaN   
    3                        No                                              NaN   
    4                        No                                              NaN   
    ...                     ...                                              ...   
    1053                     No                                              NaN   
    1054                     No                                              NaN   
    1055                     No                                              NaN   
    1056                    Yes                                              Yes   
    1057                     No                                              NaN   
    
         How would you describe where you live?      Age What is your gender?  \
    0                                  Suburban  18 - 29                 Male   
    1                                     Rural  18 - 29               Female   
    2                                  Suburban  18 - 29                 Male   
    3                                     Urban  30 - 44                 Male   
    4                                     Urban  30 - 44                 Male   
    ...                                     ...      ...                  ...   
    1053                                  Rural  30 - 44               Female   
    1054                               Suburban      60+               Female   
    1055                                  Urban      60+                 Male   
    1056                                    NaN      NaN                  NaN   
    1057                                    NaN      NaN                  NaN   
    
         How much total combined money did all members of your HOUSEHOLD earn last year?  \
    0                                    $75,000 to $99,999                                
    1                                    $50,000 to $74,999                                
    2                                          $0 to $9,999                                
    3                                       $200,000 and up                                
    4                                  $100,000 to $124,999                                
    ...                                                 ...                                
    1053                               $100,000 to $124,999                                
    1054                                 $50,000 to $74,999                                
    1055                               $100,000 to $124,999                                
    1056                                                NaN                                
    1057                                                NaN                                
    
                   US Region  
    0        Middle Atlantic  
    1     East South Central  
    2               Mountain  
    3                Pacific  
    4                Pacific  
    ...                  ...  
    1053            Mountain  
    1054             Pacific  
    1055             Pacific  
    1056                 NaN  
    1057                 NaN  
    
    [980 rows x 65 columns]



```python
#Utiliser la méthode Series.values_count() pour afficher combien de
#fois chaque résultats apparait pour la question « What is typically the
#main dish at your Thanksgiving dinner? »

sr=pd.Series(data['What is typically the main dish at your Thanksgiving dinner?'])
sr.value_counts()

```




    Turkey                    859
    Other (please specify)     35
    Ham/Pork                   29
    Tofurkey                   20
    Chicken                    12
    Roast beef                 11
    I don't know                5
    Turducken                   3
    Name: What is typically the main dish at your Thanksgiving dinner?, dtype: int64




```python
#Afficher la colonne « Do you typically have gravy? » pour les ligne du
#dataframe data pour lesquelles la colonne « What is typically the
#main dish at your Thanksgiving dinner? » vaut « Tofurkey » pour la dinde de tofu.

import pandas as pd
print(data.loc[data["What is typically the main dish at your Thanksgiving dinner?"]=="Tofurkey",:])
```

         RespondentID Do you celebrate Thanksgiving?  \
    4      4337931983                            Yes   
    33     4337771439                            Yes   
    69     4337553422                            Yes   
    72     4337540484                            Yes   
    77     4337490067                            Yes   
    145    4337191550                            Yes   
    175    4337139327                            Yes   
    218    4337078951                            Yes   
    243    4337044348                            Yes   
    275    4336997445                            Yes   
    393    4336894719                            Yes   
    399    4336891075                            Yes   
    571    4336760110                            Yes   
    594    4336736562                            Yes   
    628    4336692873                            Yes   
    774    4336400854                            Yes   
    820    4336238126                            Yes   
    837    4336175740                            Yes   
    860    4336121663                            Yes   
    953    4336005220                            Yes   
    
        What is typically the main dish at your Thanksgiving dinner?  \
    4                                             Tofurkey             
    33                                            Tofurkey             
    69                                            Tofurkey             
    72                                            Tofurkey             
    77                                            Tofurkey             
    145                                           Tofurkey             
    175                                           Tofurkey             
    218                                           Tofurkey             
    243                                           Tofurkey             
    275                                           Tofurkey             
    393                                           Tofurkey             
    399                                           Tofurkey             
    571                                           Tofurkey             
    594                                           Tofurkey             
    628                                           Tofurkey             
    774                                           Tofurkey             
    820                                           Tofurkey             
    837                                           Tofurkey             
    860                                           Tofurkey             
    953                                           Tofurkey             
    
        What is typically the main dish at your Thanksgiving dinner? - Other (please specify)  \
    4                                                  NaN                                      
    33                                                 NaN                                      
    69                                                 NaN                                      
    72                                                 NaN                                      
    77                                                 NaN                                      
    145                                                NaN                                      
    175                                                NaN                                      
    218                                                NaN                                      
    243                                                NaN                                      
    275                                                NaN                                      
    393                                                NaN                                      
    399                                                NaN                                      
    571                                                NaN                                      
    594                                                NaN                                      
    628                                                NaN                                      
    774                                                NaN                                      
    820                                                NaN                                      
    837                                                NaN                                      
    860                                                NaN                                      
    953                                                NaN                                      
    
        How is the main dish typically cooked?  \
    4                                    Baked   
    33                                   Baked   
    69                                   Baked   
    72                            I don't know   
    77                                 Roasted   
    145                                  Baked   
    175                                  Baked   
    218                                  Baked   
    243                 Other (please specify)   
    275                                  Baked   
    393                                Roasted   
    399                                Roasted   
    571                                Roasted   
    594                                  Baked   
    628                                  Baked   
    774                                  Baked   
    820                                  Baked   
    837                                  Baked   
    860                                  Baked   
    953                                  Baked   
    
        How is the main dish typically cooked? - Other (please specify)  \
    4                                                  NaN                
    33                                                 NaN                
    69                                                 NaN                
    72                                                 NaN                
    77                                                 NaN                
    145                                                NaN                
    175                                                NaN                
    218                                                NaN                
    243                                       various ways                
    275                                                NaN                
    393                                                NaN                
    399                                                NaN                
    571                                                NaN                
    594                                                NaN                
    628                                                NaN                
    774                                                NaN                
    820                                                NaN                
    837                                                NaN                
    860                                                NaN                
    953                                                NaN                
    
        What kind of stuffing/dressing do you typically have?  \
    4                                          Bread-based      
    33                                         Bread-based      
    69                                         Bread-based      
    72                                         Bread-based      
    77                                                None      
    145                                        Bread-based      
    175                                        Bread-based      
    218                                        Bread-based      
    243                                        Bread-based      
    275                                        Bread-based      
    393                                        Bread-based      
    399                                        Bread-based      
    571                                        Bread-based      
    594                                        Bread-based      
    628                                               None      
    774                                        Bread-based      
    820                                        Bread-based      
    837                                               None      
    860                                         Rice-based      
    953                                        Bread-based      
    
        What kind of stuffing/dressing do you typically have? - Other (please specify)  \
    4                                                  NaN                               
    33                                                 NaN                               
    69                                                 NaN                               
    72                                                 NaN                               
    77                                                 NaN                               
    145                                                NaN                               
    175                                                NaN                               
    218                                                NaN                               
    243                                                NaN                               
    275                                                NaN                               
    393                                                NaN                               
    399                                                NaN                               
    571                                                NaN                               
    594                                                NaN                               
    628                                                NaN                               
    774                                                NaN                               
    820                                                NaN                               
    837                                                NaN                               
    860                                                NaN                               
    953                                                NaN                               
    
        What type of cranberry saucedo you typically have?  \
    4                                               Canned   
    33                                            Homemade   
    69                                              Canned   
    72                                                None   
    77                                                None   
    145                                             Canned   
    175                                           Homemade   
    218                                             Canned   
    243                                             Canned   
    275                                               None   
    393                                             Canned   
    399                                           Homemade   
    571                                               None   
    594                                               None   
    628                                           Homemade   
    774                                             Canned   
    820                                           Homemade   
    837                                               None   
    860                             Other (please specify)   
    953                                           Homemade   
    
        What type of cranberry saucedo you typically have? - Other (please specify)  \
    4                                                  NaN                            
    33                                                 NaN                            
    69                                                 NaN                            
    72                                                 NaN                            
    77                                                 NaN                            
    145                                                NaN                            
    175                                                NaN                            
    218                                                NaN                            
    243                                                NaN                            
    275                                                NaN                            
    393                                                NaN                            
    399                                                NaN                            
    571                                                NaN                            
    594                                                NaN                            
    628                                                NaN                            
    774                                                NaN                            
    820                                                NaN                            
    837                                                NaN                            
    860                     freshly made at a deli counter                            
    953                                                NaN                            
    
         ...  \
    4    ...   
    33   ...   
    69   ...   
    72   ...   
    77   ...   
    145  ...   
    175  ...   
    218  ...   
    243  ...   
    275  ...   
    393  ...   
    399  ...   
    571  ...   
    594  ...   
    628  ...   
    774  ...   
    820  ...   
    837  ...   
    860  ...   
    953  ...   
    
        Have you ever tried to meet up with hometown friends on Thanksgiving night?  \
    4                                                  Yes                            
    33                                                 Yes                            
    69                                                  No                            
    72                                                  No                            
    77                                                 Yes                            
    145                                                 No                            
    175                                                 No                            
    218                                                Yes                            
    243                                                 No                            
    275                                                 No                            
    393                                                 No                            
    399                                                Yes                            
    571                                                 No                            
    594                                                 No                            
    628                                                 No                            
    774                                                 No                            
    820                                                 No                            
    837                                                 No                            
    860                                                 No                            
    953                                                Yes                            
    
        Have you ever attended a "Friendsgiving?"  \
    4                                          No   
    33                                         No   
    69                                        Yes   
    72                                         No   
    77                                         No   
    145                                        No   
    175                                        No   
    218                                       Yes   
    243                                        No   
    275                                        No   
    393                                        No   
    399                                        No   
    571                                        No   
    594                                        No   
    628                                        No   
    774                                       Yes   
    820                                        No   
    837                                        No   
    860                                       Yes   
    953                                        No   
    
        Will you shop any Black Friday sales on Thanksgiving Day?  \
    4                                                   No          
    33                                                  No          
    69                                                  No          
    72                                                 Yes          
    77                                                  No          
    145                                                 No          
    175                                                 No          
    218                                                 No          
    243                                                 No          
    275                                                 No          
    393                                                Yes          
    399                                                 No          
    571                                                 No          
    594                                                 No          
    628                                                Yes          
    774                                                 No          
    820                                                 No          
    837                                                Yes          
    860                                                 No          
    953                                                 No          
    
        Do you work in retail? Will you employer make you work on Black Friday?  \
    4                       No                                              NaN   
    33                      No                                              NaN   
    69                      No                                              NaN   
    72                      No                                              NaN   
    77                      No                                              NaN   
    145                     No                                              NaN   
    175                     No                                              NaN   
    218                     No                                              NaN   
    243                     No                                              NaN   
    275                     No                                              NaN   
    393                     No                                              NaN   
    399                     No                                              NaN   
    571                     No                                              NaN   
    594                     No                                              NaN   
    628                     No                                              NaN   
    774                    Yes                                              Yes   
    820                     No                                              NaN   
    837                    Yes                                               No   
    860                     No                                              NaN   
    953                     No                                              NaN   
    
        How would you describe where you live?      Age What is your gender?  \
    4                                    Urban  30 - 44                 Male   
    33                                Suburban  30 - 44                 Male   
    69                                   Urban  18 - 29                 Male   
    72                                Suburban  18 - 29                 Male   
    77                                   Urban  30 - 44                 Male   
    145                                  Urban  30 - 44               Female   
    175                                  Rural  30 - 44               Female   
    218                               Suburban  30 - 44               Female   
    243                                  Urban      60+               Female   
    275                                  Urban  30 - 44                 Male   
    393                                  Rural  18 - 29               Female   
    399                               Suburban      60+               Female   
    571                               Suburban  18 - 29               Female   
    594                                  Rural  45 - 59               Female   
    628                               Suburban      60+               Female   
    774                               Suburban  45 - 59               Female   
    820                                  Urban  18 - 29               Female   
    837                               Suburban  18 - 29               Female   
    860                                  Urban  30 - 44               Female   
    953                               Suburban  30 - 44                 Male   
    
        How much total combined money did all members of your HOUSEHOLD earn last year?  \
    4                                 $100,000 to $124,999                                
    33                                  $50,000 to $74,999                                
    69                                  $10,000 to $24,999                                
    72                                Prefer not to answer                                
    77                                Prefer not to answer                                
    145                               $125,000 to $149,999                                
    175                                 $75,000 to $99,999                                
    218                                    $200,000 and up                                
    243                               $100,000 to $124,999                                
    275                               $100,000 to $124,999                                
    393                                 $25,000 to $49,999                                
    399                               $125,000 to $149,999                                
    571                               Prefer not to answer                                
    594                               $175,000 to $199,999                                
    628                                 $25,000 to $49,999                                
    774                                 $75,000 to $99,999                                
    820                                 $10,000 to $24,999                                
    837                                 $25,000 to $49,999                                
    860                                 $25,000 to $49,999                                
    953                                       $0 to $9,999                                
    
                  US Region  
    4               Pacific  
    33      Middle Atlantic  
    69   West South Central  
    72              Pacific  
    77   East North Central  
    145  West South Central  
    175  West North Central  
    218            Mountain  
    243      South Atlantic  
    275     Middle Atlantic  
    393         New England  
    399      South Atlantic  
    571      South Atlantic  
    594     Middle Atlantic  
    628     Middle Atlantic  
    774            Mountain  
    820             Pacific  
    837  West North Central  
    860             Pacific  
    953     Middle Atlantic  
    
    [20 rows x 65 columns]



```python
#Créer un objet Series indiquant avec des booléens les valeurs de la colonnes « Which
#type of pie is typically served at your Thanksgiving dinner? Please select all that apply.-Apple » qui sont nulles.
#Assigner le résultat à la variable « apple_isnull ».

import pandas as pd


apple_isnull=pd.isnull(data['Which type of pie is typically served at your Thanksgiving dinner? Please select all that apply. - Apple'])
print(apple_isnull)
```

    0       False
    1       False
    2       False
    3        True
    4       False
            ...  
    1053     True
    1054     True
    1055    False
    1056     True
    1057     True
    Name: Which type of pie is typically served at your Thanksgiving dinner? Please select all that apply. - Apple, Length: 1058, dtype: bool



```python
#Créer un objet Series indiquant avec des booléens les valeurs de la colonnes « Which
#type of pie is typically served at your Thanksgiving dinner? Please select all that apply. -
#Pumpkin » qui sont nulles.

import pandas as pd

pumpkin_isnull=pd.isnull(data['Which type of pie is typically served at your Thanksgiving dinner? Please select all that apply. - Pumpkin'])
print(pumpkin_isnull)
```

    0        True
    1       False
    2       False
    3       False
    4       False
            ...  
    1053    False
    1054    False
    1055     True
    1056     True
    1057     True
    Name: Which type of pie is typically served at your Thanksgiving dinner? Please select all that apply. - Pumpkin, Length: 1058, dtype: bool



```python
#Créer un objet Series indiquant avec des booléens les valeurs de la colonnes « Which
#type of pie is typically served at your Thanksgiving dinner? Please select all that apply. -
#Pecan » qui sont nulles.
#Assigner le résultat à la variable « pecan_isnull ».

pecan_isnull=pd.isnull(data['Which type of pie is typically served at your Thanksgiving dinner? Please select all that apply. - Pecan'])
print (pecan_isnull)
```

    0        True
    1        True
    2       False
    3       False
    4        True
            ...  
    1053    False
    1054     True
    1055     True
    1056     True
    1057     True
    Name: Which type of pie is typically served at your Thanksgiving dinner? Please select all that apply. - Pecan, Length: 1058, dtype: bool



```python
#Combiner les trois objets Series avec l’operateur « & » et assigné le résultat à la variable« pies ».
apple_isnull=pd.isnull(data['Which type of pie is typically served at your Thanksgiving dinner? Please select all that apply. - Apple'])
pumpkin_isnull=pd.isnull(data['Which type of pie is typically served at your Thanksgiving dinner? Please select all that apply. - Pumpkin'])
pecan_isnull=pd.isnull(data['Which type of pie is typically served at your Thanksgiving dinner? Please select all that apply. - Pecan'])
#pies=((pd.isnull(data['Which type of pie is typically served at your Thanksgiving dinner? Please select all that apply. - Apple']) & (pd.isnull(data['Which type of pie is typically served at your Thanksgiving dinner? Please select all that apply. - Pumpkin']) & (pd.isnull(data['Which type of pie is typically served at your Thanksgiving dinner? Please select all that apply. - Pecan']))
#pies=(apple_isnull , pumpkin_isnull, pecan_isnull)
#pies=(pd.isnull[(data['Which type of pie is typically served at your Thanksgiving dinner? Please select all that apply. - Apple']) & (data['Which type of pie is typically served at your Thanksgiving dinner? Please select all that apply. - Pumpkin']) & (data['Which type of pie is typically served at your Thanksgiving dinner? Please select all that apply. - Pecan'])])                                                                                                                                    
pies=apple_isnull & pumpkin_isnull & pecan_isnull
print(pies)
print(apple_isnull , pumpkin_isnull , pecan_isnull)
```

    0       False
    1       False
    2       False
    3       False
    4       False
            ...  
    1053    False
    1054    False
    1055    False
    1056     True
    1057     True
    Length: 1058, dtype: bool
    0       False
    1       False
    2       False
    3        True
    4       False
            ...  
    1053     True
    1054     True
    1055    False
    1056     True
    1057     True
    Name: Which type of pie is typically served at your Thanksgiving dinner? Please select all that apply. - Apple, Length: 1058, dtype: bool 0        True
    1       False
    2       False
    3       False
    4       False
            ...  
    1053    False
    1054    False
    1055     True
    1056     True
    1057     True
    Name: Which type of pie is typically served at your Thanksgiving dinner? Please select all that apply. - Pumpkin, Length: 1058, dtype: bool 0        True
    1        True
    2       False
    3       False
    4        True
            ...  
    1053    False
    1054     True
    1055     True
    1056     True
    1057     True
    Name: Which type of pie is typically served at your Thanksgiving dinner? Please select all that apply. - Pecan, Length: 1058, dtype: bool



```python
# Afficher les valeurs unique et combien de fois elle apparaissent dans la colonnes de pies.

pies.value_counts()
```




    False    876
    True     182
    dtype: int64




```python
# Ecrire une fonction qui converti une chaîne de caractère en une valeur
#entière. Cela permettra de convertir les valeurs de la colonne « Age » en
#entiers. Cette fonction prendra en paramètre une chaîne de caractères (les
#valeurs actuelles de la colonne « Age »)
#• Utiliser la fonction is_null() pour vérifier si les valeurs sont nulles. 
#Ajouter une condition if qui retourne None si la valeur est nulle.
#• Séparer les chaine de caractère en fonction de l’espace (‘ ’) et extraire le 1 ère élément de la liste.
#• Supprimer le caractère ‘+’ dans le résultat.
#• Convertir le résultat en entier.
#• Retourner le résultat.

def is_null(s):
    if pd.isnull(s):
        return None
    else:
        x=s.split(' ')
        x=x[0]
        x=x.replace('+','')
        x=int(x)
    return x

```


```python
#Utiliser la méthode Series.apply() pour appliquer la fonction à chaque
#valeur de la colonne ‘Age’ du dataframe data.
#• Assigner le résultat à la nouvelle colonne ‘int_age’ du dataframe.

data['int_age']=data['Age'].apply(is_null)

print(data['int_age'])


```

    0       18.0
    1       18.0
    2       18.0
    3       30.0
    4       30.0
            ... 
    1053    30.0
    1054    60.0
    1055    60.0
    1056     NaN
    1057     NaN
    Name: int_age, Length: 1058, dtype: float64



```python
# Appeler la méthode Series.describe() sur la colonne « int_age » du
#dataframe data et afficher le résultat.

a=data['int_age']
a.describe()
```




    count    1025.000000
    mean       39.383415
    std        15.398493
    min        18.000000
    25%        30.000000
    50%        45.000000
    75%        60.000000
    max        60.000000
    Name: int_age, dtype: float64




```python
# Ecrire une fonction pour convertir les revenus en valeur unique de format entier.
#• Utiliser la fonction isnull() pour vérifier si la valeur est nulle. Si c’est le cas, retourner « None ».
#• Séparer la chaine de caractère en prenant l’espace comme délimiteur et extraire le premier
#élément de la liste résultante.
#• Si le résultat vaut « Prefer » retourner « None ».
#• Supprimer les caractères « $ » et « , ».
#• Utiliser int() pour convertir le résultat en entier.
#• Retourner le résultat.


def revenus(b):
    if pd.isnull(b):
        return None
    y=b.split(' ')
    y=y[0]
    if y=='Prefer':
        return None
    y=y.replace('$','')
    y=y.replace(',','')
    y=int(y)
    return y
```


```python
# Utiliser la méthode Series.apply() pour appliquer la fonction précédente à chaque
#valeur de la colonne « How much total combined money did all members of your
#HOUSEHOLD earn last year? » du dataframe data.
#• Assigner le résultat à la nouvelle colonne « int_income » du dataframe data.

data['int_income']=data['How much total combined money did all members of your HOUSEHOLD earn last year?'].apply(revenus)
print (data['int_income'])
```

    0        75000.0
    1        50000.0
    2            0.0
    3       200000.0
    4       100000.0
              ...   
    1053    100000.0
    1054     50000.0
    1055    100000.0
    1056         NaN
    1057         NaN
    Name: int_income, Length: 1058, dtype: float64



```python
# Appeler la méthode Series.describe() à la colonne int_income du dataframe data
#et afficher le résultat.
x=data['int_income']
x.describe()
```




    count       889.000000
    mean      74077.615298
    std       59360.742902
    min           0.000000
    25%       25000.000000
    50%       50000.000000
    75%      100000.000000
    max      200000.000000
    Name: int_income, dtype: float64




```python
# Regarder de quel manière les personnages gagnant moins de 150 000 dollars voyagent.
#• Filtrer data en sélectionnant seulement les valeur de « int_income » infèrieures à 150 000
travel=data[data['int_income'] < 150000]
print (travel)
```

          RespondentID Do you celebrate Thanksgiving?  \
    0       4337954960                            Yes   
    1       4337951949                            Yes   
    2       4337935621                            Yes   
    4       4337931983                            Yes   
    5       4337929779                            Yes   
    ...            ...                            ...   
    1051    4335944854                            Yes   
    1052    4335944115                             No   
    1053    4335944082                            Yes   
    1054    4335943173                            Yes   
    1055    4335943060                            Yes   
    
         What is typically the main dish at your Thanksgiving dinner?  \
    0                                                Turkey             
    1                                                Turkey             
    2                                                Turkey             
    4                                              Tofurkey             
    5                                                Turkey             
    ...                                                 ...             
    1051                                             Turkey             
    1052                                                NaN             
    1053                                             Turkey             
    1054                                             Turkey             
    1055                             Other (please specify)             
    
         What is typically the main dish at your Thanksgiving dinner? - Other (please specify)  \
    0                                                   NaN                                      
    1                                                   NaN                                      
    2                                                   NaN                                      
    4                                                   NaN                                      
    5                                                   NaN                                      
    ...                                                 ...                                      
    1051                                                NaN                                      
    1052                                                NaN                                      
    1053                                                NaN                                      
    1054                                                NaN                                      
    1055                                               Duck                                      
    
         How is the main dish typically cooked?  \
    0                                     Baked   
    1                                     Baked   
    2                                   Roasted   
    4                                     Baked   
    5                                   Roasted   
    ...                                     ...   
    1051                                Roasted   
    1052                                    NaN   
    1053                                Roasted   
    1054                                  Baked   
    1055                                  Baked   
    
         How is the main dish typically cooked? - Other (please specify)  \
    0                                                   NaN                
    1                                                   NaN                
    2                                                   NaN                
    4                                                   NaN                
    5                                                   NaN                
    ...                                                 ...                
    1051                                                NaN                
    1052                                                NaN                
    1053                                                NaN                
    1054                                                NaN                
    1055                                                NaN                
    
         What kind of stuffing/dressing do you typically have?  \
    0                                           Bread-based      
    1                                           Bread-based      
    2                                            Rice-based      
    4                                           Bread-based      
    5                                            Rice-based      
    ...                                                 ...      
    1051                                        Bread-based      
    1052                                                NaN      
    1053                                        Bread-based      
    1054                                        Bread-based      
    1055                                         Rice-based      
    
         What kind of stuffing/dressing do you typically have? - Other (please specify)  \
    0                                                   NaN                               
    1                                                   NaN                               
    2                                                   NaN                               
    4                                                   NaN                               
    5                                                   NaN                               
    ...                                                 ...                               
    1051                                                NaN                               
    1052                                                NaN                               
    1053                                                NaN                               
    1054                                                NaN                               
    1055                                                NaN                               
    
         What type of cranberry saucedo you typically have?  \
    0                                                  None   
    1                                Other (please specify)   
    2                                              Homemade   
    4                                                Canned   
    5                                              Homemade   
    ...                                                 ...   
    1051                                             Canned   
    1052                                                NaN   
    1053                                           Homemade   
    1054                                             Canned   
    1055                                               None   
    
         What type of cranberry saucedo you typically have? - Other (please specify)  \
    0                                                   NaN                            
    1                       Homemade cranberry gelatin ring                            
    2                                                   NaN                            
    4                                                   NaN                            
    5                                                   NaN                            
    ...                                                 ...                            
    1051                                                NaN                            
    1052                                                NaN                            
    1053                                                NaN                            
    1054                                                NaN                            
    1055                                                NaN                            
    
          ... Will you shop any Black Friday sales on Thanksgiving Day?  \
    0     ...                                                 No          
    1     ...                                                Yes          
    2     ...                                                Yes          
    4     ...                                                 No          
    5     ...                                                Yes          
    ...   ...                                                ...          
    1051  ...                                                 No          
    1052  ...                                                NaN          
    1053  ...                                                 No          
    1054  ...                                                 No          
    1055  ...                                                Yes          
    
         Do you work in retail? Will you employer make you work on Black Friday?  \
    0                        No                                              NaN   
    1                        No                                              NaN   
    2                        No                                              NaN   
    4                        No                                              NaN   
    5                        No                                              NaN   
    ...                     ...                                              ...   
    1051                     No                                              NaN   
    1052                    NaN                                              NaN   
    1053                     No                                              NaN   
    1054                     No                                              NaN   
    1055                     No                                              NaN   
    
         How would you describe where you live?      Age What is your gender?  \
    0                                  Suburban  18 - 29                 Male   
    1                                     Rural  18 - 29               Female   
    2                                  Suburban  18 - 29                 Male   
    4                                     Urban  30 - 44                 Male   
    5                                     Urban  18 - 29                 Male   
    ...                                     ...      ...                  ...   
    1051                               Suburban      60+                 Male   
    1052                                    NaN  18 - 29                 Male   
    1053                                  Rural  30 - 44               Female   
    1054                               Suburban      60+               Female   
    1055                                  Urban      60+                 Male   
    
         How much total combined money did all members of your HOUSEHOLD earn last year?  \
    0                                    $75,000 to $99,999                                
    1                                    $50,000 to $74,999                                
    2                                          $0 to $9,999                                
    4                                  $100,000 to $124,999                                
    5                                          $0 to $9,999                                
    ...                                                 ...                                
    1051                               $125,000 to $149,999                                
    1052                                       $0 to $9,999                                
    1053                               $100,000 to $124,999                                
    1054                                 $50,000 to $74,999                                
    1055                               $100,000 to $124,999                                
    
                   US Region int_age int_income  
    0        Middle Atlantic    18.0    75000.0  
    1     East South Central    18.0    50000.0  
    2               Mountain    18.0        0.0  
    4                Pacific    30.0   100000.0  
    5                Pacific    18.0        0.0  
    ...                  ...     ...        ...  
    1051             Pacific    60.0   125000.0  
    1052                 NaN    18.0        0.0  
    1053            Mountain    30.0   100000.0  
    1054             Pacific    60.0    50000.0  
    1055             Pacific    60.0   100000.0  
    
    [742 rows x 67 columns]



```python
#• Sélectionner la colonne « How far will you travel for Thanksgiving? » en prenant en compte le filtre.

print (data.loc[(data['int_income']<150000) & (data['How far will you travel for Thanksgiving?']),:])
```

          RespondentID Do you celebrate Thanksgiving?  \
    0       4337954960                            Yes   
    1       4337951949                            Yes   
    2       4337935621                            Yes   
    4       4337931983                            Yes   
    5       4337929779                            Yes   
    ...            ...                            ...   
    1050    4335945415                            Yes   
    1051    4335944854                            Yes   
    1053    4335944082                            Yes   
    1054    4335943173                            Yes   
    1055    4335943060                            Yes   
    
         What is typically the main dish at your Thanksgiving dinner?  \
    0                                                Turkey             
    1                                                Turkey             
    2                                                Turkey             
    4                                              Tofurkey             
    5                                                Turkey             
    ...                                                 ...             
    1050                                             Turkey             
    1051                                             Turkey             
    1053                                             Turkey             
    1054                                             Turkey             
    1055                             Other (please specify)             
    
         What is typically the main dish at your Thanksgiving dinner? - Other (please specify)  \
    0                                                   NaN                                      
    1                                                   NaN                                      
    2                                                   NaN                                      
    4                                                   NaN                                      
    5                                                   NaN                                      
    ...                                                 ...                                      
    1050                                                NaN                                      
    1051                                                NaN                                      
    1053                                                NaN                                      
    1054                                                NaN                                      
    1055                                               Duck                                      
    
         How is the main dish typically cooked?  \
    0                                     Baked   
    1                                     Baked   
    2                                   Roasted   
    4                                     Baked   
    5                                   Roasted   
    ...                                     ...   
    1050                                Roasted   
    1051                                Roasted   
    1053                                Roasted   
    1054                                  Baked   
    1055                                  Baked   
    
         How is the main dish typically cooked? - Other (please specify)  \
    0                                                   NaN                
    1                                                   NaN                
    2                                                   NaN                
    4                                                   NaN                
    5                                                   NaN                
    ...                                                 ...                
    1050                                                NaN                
    1051                                                NaN                
    1053                                                NaN                
    1054                                                NaN                
    1055                                                NaN                
    
         What kind of stuffing/dressing do you typically have?  \
    0                                           Bread-based      
    1                                           Bread-based      
    2                                            Rice-based      
    4                                           Bread-based      
    5                                            Rice-based      
    ...                                                 ...      
    1050                                        Bread-based      
    1051                                        Bread-based      
    1053                                        Bread-based      
    1054                                        Bread-based      
    1055                                         Rice-based      
    
         What kind of stuffing/dressing do you typically have? - Other (please specify)  \
    0                                                   NaN                               
    1                                                   NaN                               
    2                                                   NaN                               
    4                                                   NaN                               
    5                                                   NaN                               
    ...                                                 ...                               
    1050                                                NaN                               
    1051                                                NaN                               
    1053                                                NaN                               
    1054                                                NaN                               
    1055                                                NaN                               
    
         What type of cranberry saucedo you typically have?  \
    0                                                  None   
    1                                Other (please specify)   
    2                                              Homemade   
    4                                                Canned   
    5                                              Homemade   
    ...                                                 ...   
    1050                                               None   
    1051                                             Canned   
    1053                                           Homemade   
    1054                                             Canned   
    1055                                               None   
    
         What type of cranberry saucedo you typically have? - Other (please specify)  \
    0                                                   NaN                            
    1                       Homemade cranberry gelatin ring                            
    2                                                   NaN                            
    4                                                   NaN                            
    5                                                   NaN                            
    ...                                                 ...                            
    1050                                                NaN                            
    1051                                                NaN                            
    1053                                                NaN                            
    1054                                                NaN                            
    1055                                                NaN                            
    
          ... Will you shop any Black Friday sales on Thanksgiving Day?  \
    0     ...                                                 No          
    1     ...                                                Yes          
    2     ...                                                Yes          
    4     ...                                                 No          
    5     ...                                                Yes          
    ...   ...                                                ...          
    1050  ...                                                 No          
    1051  ...                                                 No          
    1053  ...                                                 No          
    1054  ...                                                 No          
    1055  ...                                                Yes          
    
         Do you work in retail? Will you employer make you work on Black Friday?  \
    0                        No                                              NaN   
    1                        No                                              NaN   
    2                        No                                              NaN   
    4                        No                                              NaN   
    5                        No                                              NaN   
    ...                     ...                                              ...   
    1050                     No                                              NaN   
    1051                     No                                              NaN   
    1053                     No                                              NaN   
    1054                     No                                              NaN   
    1055                     No                                              NaN   
    
         How would you describe where you live?      Age What is your gender?  \
    0                                  Suburban  18 - 29                 Male   
    1                                     Rural  18 - 29               Female   
    2                                  Suburban  18 - 29                 Male   
    4                                     Urban  30 - 44                 Male   
    5                                     Urban  18 - 29                 Male   
    ...                                     ...      ...                  ...   
    1050                                  Rural      60+                 Male   
    1051                               Suburban      60+                 Male   
    1053                                  Rural  30 - 44               Female   
    1054                               Suburban      60+               Female   
    1055                                  Urban      60+                 Male   
    
         How much total combined money did all members of your HOUSEHOLD earn last year?  \
    0                                    $75,000 to $99,999                                
    1                                    $50,000 to $74,999                                
    2                                          $0 to $9,999                                
    4                                  $100,000 to $124,999                                
    5                                          $0 to $9,999                                
    ...                                                 ...                                
    1050                               $125,000 to $149,999                                
    1051                               $125,000 to $149,999                                
    1053                               $100,000 to $124,999                                
    1054                                 $50,000 to $74,999                                
    1055                               $100,000 to $124,999                                
    
                   US Region int_age int_income  
    0        Middle Atlantic    18.0    75000.0  
    1     East South Central    18.0    50000.0  
    2               Mountain    18.0        0.0  
    4                Pacific    30.0   100000.0  
    5                Pacific    18.0        0.0  
    ...                  ...     ...        ...  
    1050      South Atlantic    60.0   125000.0  
    1051             Pacific    60.0   125000.0  
    1053            Mountain    30.0   100000.0  
    1054             Pacific    60.0    50000.0  
    1055             Pacific    60.0   100000.0  
    
    [689 rows x 67 columns]



```python
#• Utiliser la méthode value_counts() pour compter combien e fois chaque vaaleur apparait dans la colonne.
#• Afficher le résultats.

travel=data[data['int_income'] < 150000]
x=travel['How far will you travel for Thanksgiving?'].value_counts()

print(x)
```

    Thanksgiving is happening at my home--I won't travel at all                         281
    Thanksgiving is local--it will take place in the town I live in                     203
    Thanksgiving is out of town but not too far--it's a drive of a few hours or less    150
    Thanksgiving is out of town and far away--I have to drive several hours or fly       55
    Name: How far will you travel for Thanksgiving?, dtype: int64



```python
# ici on a le resultat sans la condition <150000 pour les revenus

data['How far will you travel for Thanksgiving?'].value_counts()
```




    Thanksgiving is happening at my home--I won't travel at all                         396
    Thanksgiving is local--it will take place in the town I live in                     276
    Thanksgiving is out of town but not too far--it's a drive of a few hours or less    197
    Thanksgiving is out of town and far away--I have to drive several hours or fly       82
    Name: How far will you travel for Thanksgiving?, dtype: int64




```python
# Faire de même avec les personnages gagnant plus de 150 000 dollars.
travel2=data[data['int_income']>150000]
print (travel2)
#print ((data.loc[(data['int_income']<150000) & (data['How far will you travel for Thanksgiving?']),:]).value_counts())
```

          RespondentID Do you celebrate Thanksgiving?  \
    3       4337933040                            Yes   
    15      4337857295                            Yes   
    16      4337856362                            Yes   
    25      4337790002                            Yes   
    39      4337732348                            Yes   
    ...            ...                            ...   
    982     4335981057                            Yes   
    983     4335979596                            Yes   
    993     4335973959                            Yes   
    1015    4335960288                            Yes   
    1026    4335957096                            Yes   
    
         What is typically the main dish at your Thanksgiving dinner?  \
    3                                                Turkey             
    15                                               Turkey             
    16                                            Turducken             
    25                                               Turkey             
    39                                             Ham/Pork             
    ...                                                 ...             
    982                                              Turkey             
    983                                              Turkey             
    993                                              Turkey             
    1015                             Other (please specify)             
    1026                                             Turkey             
    
         What is typically the main dish at your Thanksgiving dinner? - Other (please specify)  \
    3                                                   NaN                                      
    15                                                  NaN                                      
    16                                                  NaN                                      
    25                                                  NaN                                      
    39                                                  NaN                                      
    ...                                                 ...                                      
    982                                                 NaN                                      
    983                                                 NaN                                      
    993                                                 NaN                                      
    1015  Varies significantly by year as one group of p...                                      
    1026                                                NaN                                      
    
         How is the main dish typically cooked?  \
    3                                     Baked   
    15                                  Roasted   
    16                                  Roasted   
    25                                  Roasted   
    39                                  Roasted   
    ...                                     ...   
    982                                   Baked   
    983                                   Baked   
    993                                 Roasted   
    1015                 Other (please specify)   
    1026                                Roasted   
    
         How is the main dish typically cooked? - Other (please specify)  \
    3                                                   NaN                
    15                                                  NaN                
    16                                                  NaN                
    25                                                  NaN                
    39                                                  NaN                
    ...                                                 ...                
    982                                                 NaN                
    983                                                 NaN                
    993                                                 NaN                
    1015                                Varies as per above                
    1026                                                NaN                
    
         What kind of stuffing/dressing do you typically have?  \
    3                                           Bread-based      
    15                                           Rice-based      
    16                                          Bread-based      
    25                                          Bread-based      
    39                                          Bread-based      
    ...                                                 ...      
    982                                         Bread-based      
    983                                         Bread-based      
    993                                         Bread-based      
    1015                                        Bread-based      
    1026                                        Bread-based      
    
         What kind of stuffing/dressing do you typically have? - Other (please specify)  \
    3                                                   NaN                               
    15                                                  NaN                               
    16                                                  NaN                               
    25                                                  NaN                               
    39                                                  NaN                               
    ...                                                 ...                               
    982                                                 NaN                               
    983                                                 NaN                               
    993                                                 NaN                               
    1015                                                NaN                               
    1026                                                NaN                               
    
         What type of cranberry saucedo you typically have?  \
    3                                              Homemade   
    15                                               Canned   
    16                                             Homemade   
    25                                             Homemade   
    39                                             Homemade   
    ...                                                 ...   
    982                                              Canned   
    983                                            Homemade   
    993                                            Homemade   
    1015                                               None   
    1026                                             Canned   
    
         What type of cranberry saucedo you typically have? - Other (please specify)  \
    3                                                   NaN                            
    15                                                  NaN                            
    16                                                  NaN                            
    25                                                  NaN                            
    39                                                  NaN                            
    ...                                                 ...                            
    982                                                 NaN                            
    983                                                 NaN                            
    993                                                 NaN                            
    1015                                                NaN                            
    1026                                                NaN                            
    
          ... Will you shop any Black Friday sales on Thanksgiving Day?  \
    3     ...                                                 No          
    15    ...                                                 No          
    16    ...                                                Yes          
    25    ...                                                 No          
    39    ...                                                 No          
    ...   ...                                                ...          
    982   ...                                                 No          
    983   ...                                                 No          
    993   ...                                                 No          
    1015  ...                                                 No          
    1026  ...                                                 No          
    
         Do you work in retail? Will you employer make you work on Black Friday?  \
    3                        No                                              NaN   
    15                       No                                              NaN   
    16                      Yes                                    Doesn't apply   
    25                       No                                              NaN   
    39                       No                                              NaN   
    ...                     ...                                              ...   
    982                      No                                              NaN   
    983                      No                                              NaN   
    993                      No                                              NaN   
    1015                    Yes                                               No   
    1026                     No                                              NaN   
    
         How would you describe where you live?      Age What is your gender?  \
    3                                     Urban  30 - 44                 Male   
    15                                 Suburban  30 - 44                 Male   
    16                                 Suburban  30 - 44                 Male   
    25                                    Rural  18 - 29                 Male   
    39                                    Rural  18 - 29                 Male   
    ...                                     ...      ...                  ...   
    982                                   Urban  30 - 44                 Male   
    983                                Suburban      60+               Female   
    993                                Suburban  45 - 59               Female   
    1015                                  Urban  45 - 59                 Male   
    1026                               Suburban  45 - 59                 Male   
    
         How much total combined money did all members of your HOUSEHOLD earn last year?  \
    3                                       $200,000 and up                                
    15                                      $200,000 and up                                
    16                                      $200,000 and up                                
    25                                      $200,000 and up                                
    39                                      $200,000 and up                                
    ...                                                 ...                                
    982                                     $200,000 and up                                
    983                                     $200,000 and up                                
    993                                     $200,000 and up                                
    1015                               $175,000 to $199,999                                
    1026                               $175,000 to $199,999                                
    
                   US Region int_age int_income  
    3                Pacific    30.0   200000.0  
    15               Pacific    30.0   200000.0  
    16               Pacific    30.0   200000.0  
    25       Middle Atlantic    18.0   200000.0  
    39    West South Central    18.0   200000.0  
    ...                  ...     ...        ...  
    982              Pacific    30.0   200000.0  
    983             Mountain    60.0   200000.0  
    993   West North Central    45.0   200000.0  
    1015             Pacific    45.0   175000.0  
    1026  East North Central    45.0   175000.0  
    
    [107 rows x 67 columns]



```python
travel2=data[data['int_income']>150000]
travel2=travel2['How far will you travel for Thanksgiving?'].value_counts()
print (travel2)
```

    Thanksgiving is happening at my home--I won't travel at all                         49
    Thanksgiving is local--it will take place in the town I live in                     25
    Thanksgiving is out of town but not too far--it's a drive of a few hours or less    16
    Thanksgiving is out of town and far away--I have to drive several hours or fly      12
    Name: How far will you travel for Thanksgiving?, dtype: int64



```python
#• Générer un pivot de table montrant la moyenne d’âge des sondés
#pour chaque catégorie des questions « Have you ever tried to meet
#up with hometown friends on Thanksgiving night? » et « Have you
#ever attended a "Friendsgiving?" ».
#• Appeler la méthode pivot_table() sur le data frame data.
#• Passer au paramètre « index » la valeur « Have you ever tried to meet up with
#hometown friends on Thanksgiving night? ».
#• Passer au paramètre « columns » la valeur « Have you ever attended a "Friendsgiving?" ».
#• Passer au paramètre « values » la valeur « int_age »
#• Afficher les résultats.

moyenne_age1=data.pivot_table(index=['Have you ever tried to meet up with hometown friends on Thanksgiving night?'],columns=['Have you ever attended a "Friendsgiving?"'],values=['int_age'],aggfunc=pd.Series.mean)
print(moyenne_age1)
```

                                                          int_age           
    Have you ever attended a "Friendsgiving?"                  No        Yes
    Have you ever tried to meet up with hometown fr...                      
    No                                                  42.283702  37.010526
    Yes                                                 41.475410  33.976744



```python
# • Faire de même avec les revenus avec ces deux questions.

moyenne_age2=data.pivot_table(index=['Have you ever tried to meet up with hometown friends on Thanksgiving night?'],columns=['Have you ever attended a "Friendsgiving?"'],values=['int_income'],aggfunc=pd.Series.mean)
print (moyenne_age2)
```

                                                          int_income              
    Have you ever attended a "Friendsgiving?"                     No           Yes
    Have you ever tried to meet up with hometown fr...                            
    No                                                  78914.549654  72894.736842
    Yes                                                 78750.000000  66019.736842



```python

```
