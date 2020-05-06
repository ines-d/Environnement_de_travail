```python
# Ecrire une fonction hascap(s) qui renvoie tout les mots de la chaîne s commençant par une majuscule.
# en utilisant la fonction ord()

A='Onze Ans déjà que cela passe Vite'
x=A.split()

def hascap(A):
    for i in range(0,len(x)):
        if 65<=ord(x[i][0])<=90:
            return x[i]
            

print(hascap(s))

```

    Onze



```python
# Ecrire une fonction hascap(s) qui renvoie tout les mots de la chaîne s commençant par une majuscule.
# deuxième méthode

from re import findall

A='Onze Ans déjà que cela passe Vite'

def hascap(s):
    x=findall('[A-Z]+[a-z]+' , A)
    return x
print(hascap(A))


```

    ['Onze', 'Ans', 'Vite']



```python
A='Onze Ans déjà que cela passe Vite'
x=A.split()
x1=[]
def hascap(s):
    x1=[]
    for i in range(0,len(x)):
        if 65<=ord(x[i][0])<=90:
            x1.append(x[i])
    return x1
            

print(hascap(s))
        
```

    ['Onze', 'Ans', 'Vite']



```python
A='Onze Ans déjà que cela passe Vite'
x=A.split()

for i in range(0,len(x)):
    if 65<=ord(x[i][0])<=90:
        print(x[i],end=',')
```

    Onze,Ans,Vite,


```python
# Proposer une fonction inflation(s) qui va doubler la valeur de tout les nombre dans la chaine s. Exemple : « Le prix est de 27 euros » devient « Le prix est de 54 euros ».
A='le prix est de 27 euros'
x=A.split()

def inflation(A):
    for index, val in enumerate(x):
        if val.isnumeric() == True:
            y=int(val)*2
            y1=str(y)# faut le changer en str pour avoir un rendu plus propre
            return 'le prix est de ' + y1+ ' euros'
print (inflation(A)) 

```

    le prix est de 54 euros



```python
# Proposer une fonction lignes qui à partir d’une long chaîne s (>100 caractères) renvoie une liste de chaîne de caractères contenant chacun 24 caractères maximum et terminant par un espace.

s = "Onze ans deja que cela passe vite Vous "
s += "vous étiez servis simplement de vos armes la "
s += "mort n‘éblouit pas les yeux des partisans Vous "
s += "aviez vos portraits sur les murs de nos villes"

def ligne(s):
    y=['']
    x=s.split()
    
    for i in x:
        i+=" "
    
        if len(y[-1])+len(i)<=24:
            y[-1]+=i
        
        else:
            y.append(i)
    return y
        
print(ligne(s))
        

```

    ['Onze ans deja que cela ', 'passe vite Vous vous ', 'étiez servis simplement ', 'de vos armes la mort ', 'n‘éblouit pas les yeux ', 'des partisans Vous ', 'aviez vos portraits sur ', 'les murs de nos villes ']



```python
# Proposer une fonction lignes qui à partir d’une long chaîne s (>100 caractères) renvoie une liste de chaîne de caractères contenant chacun 24 caractères maximum et terminant par un espace.   

s = "Onze ans déjà que cela passe vite Vous "
s += "vous étiez servis simplement de vos armes la "
s += "mort n‘éblouit pas les yeux des partisans Vous"
s += "aviez vos portraits sur les murs de nos villes"
x=[]
i=0
def ligne(s):
    for i in range (0,len(s),23):
        s[i:i+23]
        x.append(s[i:i+23])
    return ' \n'.join(x)
print(ligne(s))

#for i in range (0, len(s),23):
    #s[i:i+23]
    #print(s[i:i+23])
```

    Onze ans déjà que cela  
    passe vite Vous vous ét 
    iez servis simplement d 
    e vos armes la mort n‘é 
    blouit pas les yeux des 
     partisans Vousaviez vo 
    s portraits sur les mur 
    s de nos villes



```python
# Proposer un programme qui renvoie la liste de tout les nombres (y compris décimaux et négatifs) d’une chaîne de caractères. A tester sur la chaîne : « Les 2 maquereaux valent 6.50 euros ».
# 1ère methode

from re import findall

s= 'Les 2 maquereaux valent 6.50 euros 33 centimes'
def nombre(s):
    f=findall('[\-]?[0-9][\.,,]?[0-9]*', s)
    return '\n'.join(f)
print(nombre(s))


```

    2
    6.50
    33



```python
# Proposer un programme qui renvoie la liste de tout les nombres (y compris décimaux et négatifs) d’une chaîne de caractères. A tester sur la chaîne : « Les 2 maquereaux valent 6.50 euros ».
# 2ème méthode

from re import findall

s= 'Les 2 maquereaux valent 6.50 euros 33 centimes'
x=s.split()
f1=findall('[\s,+,-][0-9]+[\s,+,-]', s)
f2=findall('[\s,+,-][0-9]+[\.][0-9]+', s)
x=[]

def nombre (s):
    if f1==findall('[\s,+,-][0-9]+[\s,+,-]', s):
        x.append(f1)
        if f2==findall('[\s,+,-][0-9]+[\.][0-9]+', s):
            x.append(f2)
            
    return (x)
           
print (nombre(s))

#def nombre (s):
    #y=[]
    #if f1==findall('[\s,+,-][0-9]+[\s,+,-]', s) :#and f2==findall('[\s,+,-][0-9]+[\.][0-9]+',s):
        #y.append(f1 #and f2)
    
    #elif f2==findall('[\s,+,-][0-9]+[\.][0-9]+',s):
        #y.append(f2)
    #else:
    #return y
#print (nombre(s))
```

    [[' 2 ', ' 33 '], [' 6.50']]



```python
# Proposer une fonction arrondi(s) qui dans la chaîne s troncature tout les nombre décimaux. On autorise les nombres négatifs.

from re import sub

s= 'Les -2.3 maquereaux valent 6.50 euros et 33 centimes'

def arrondi (s):
    N=sub('[\.,,]+[0-9]+','', s)
    return (N)
print(arrondi(s))
```

    Les -2 maquereaux valent 6 euros et 33 centimes



```python
# Proposer une fonction arrondi(s) qui dans la chaîne s troncature tout les nombre décimaux. On autorise les nombres négatifs.

import re

s= 'Les 2 maquereaux valent 6.50 euros 33 centimes'
x=s.split()
f1=re.findall('[\s,+,-][0-9]+[\s,+,-]', s)
f2=re.findall('[\s,+,-][0-9]+[\.][0-9]+', s)
f3=sub('[\.]+[0-9]+', '',f2)
x=[]

def nombre (s):
    if f1==re.findall('[\s,+,-][0-9]+[\s,+,-]', s):
        x.append(f1)
        if f2==re.findall('[\s,+,-][0-9]+[\.][0-9]+', s):
            f3==sub('[\.]+[0-9]+', '',f2)
            x.append(f3)
            
    return x #essayer avec re.compile()
           
print (nombre(s))
```


    ---------------------------------------------------------------------------

    TypeError                                 Traceback (most recent call last)

    <ipython-input-157-ef611baf1df5> in <module>
          7 f1=re.findall('[\s,+,-][0-9]+[\s,+,-]', s)
          8 f2=re.findall('[\s,+,-][0-9]+[\.][0-9]+', s)
    ----> 9 f3=sub('[\.]+[0-9]+', '',f2)
         10 x=[]
         11 


    ~/anaconda3/lib/python3.7/re.py in sub(pattern, repl, string, count, flags)
        190     a callable, it's passed the Match object and must return
        191     a replacement string to be used."""
    --> 192     return _compile(pattern, flags).sub(repl, string, count)
        193 
        194 def subn(pattern, repl, string, count=0, flags=0):


    TypeError: expected string or bytes-like object



```python
from re import findall

s = "Onze ans deja que cela passe vite Vous "
s += "vous étiez servis simplement de vos armes la "
s += "mort n‘éblouit pas les yeux des partisans Vous "
s += "aviez vos portraits sur les murs de nos villes"
x=s.split()
i=0
motif=('[A-Z][a-z]+''^')

for i in range (0, len(s)):
    if i<=176:
        if i<=(176-23):
            print(s[i],end='')
```

    O/n/z/e/ /a/n/s/ /d/e/j/a/ /q/u/e/ /c/e/l/a/ /p/a/s/s/e/ /v/i/t/e/ /V/o/u/s/ /v/o/u/s/ /é/t/i/e/z/ /s/e/r/v/i/s/ /s/i/m/p/l/e/m/e/n/t/ /d/e/ /v/o/s/ /a/r/m/e/s/ /l/a/ /m/o/r/t/ /n/‘/é/b/l/o/u/i/t/ /p/a/s/ /l/e/s/ /y/e/u/x/ /d/e/s/ /p/a/r/t/i/s/a/n/s/ /V/o/u/s/ /a/v/i/e/z/ /v/o/s/ /p/o/r/t/r/a/i/t/s/ /s/u/r/


```python
s = "Onze ans déjà que cela passe vite Vous "
s += "vous étiez servis simplement de vos armes la "
s += "mort n‘éblouit pas les yeux des partisans Vous"
s += "aviez vos portraits sur les murs de nos villes"
x=s.split()
a=len(s)
print(a)

def ligne (s):
    x1=[]
    for i in range (0, len(s),23):   
            x1.append(s[i])
    return x1 

print(ligne(s))
```

    176



    ---------------------------------------------------------------------------

    TypeError                                 Traceback (most recent call last)

    <ipython-input-191-9b0ae3584379> in <module>
         13     return x1
         14 
    ---> 15 print(ligne(s))
    

    <ipython-input-191-9b0ae3584379> in ligne(s)
         10     x1=[]
         11     for i in range (0, len(s),23):
    ---> 12             x1.append()
         13     return x1
         14 


    TypeError: append() takes exactly one argument (0 given)



```python
s = "Onze ans déjà que cela passe vite Vous "
s += "vous étiez servis simplement de vos armes la "
s += "mort n‘éblouit pas les yeux des partisans Vous"
s += "aviez vos portraits sur les murs de nos villes"
x=s.split()
i=0

for i in range (0, len(s),23):
    if i<=23 and s[23]=='':
        print(s[i], end='')
```


```python
from re import findall

s = "Onze ans déjà que cela passe vite Vous "
s += "vous étiez servis simplement de vos armes la "
s += "mort n‘éblouit pas les yeux des partisans Vous"
s += "aviez vos portraits sur les murs de nos villes"

liste = findall('.{1,23}', s)
print(liste)

```

    ['Onze ans déjà que cela ', 'passe vite Vous vous ét', 'iez servis simplement d', 'e vos armes la mort n‘é', 'blouit pas les yeux des', ' partisans Vousaviez vo', 's portraits sur les mur', 's de nos villes']



```python
from re import findall

s = "Onze ans déjà que cela passe vite Vous "
s += "vous étiez servis simplement de vos armes la "
s += "mort n‘éblouit pas les yeux des partisans Vous"
s += "aviez vos portraits sur les murs de nos villes"
i=0
x= []

def ligne(s):
    for i in range (0,len(s),23):
        s[i:i+23]
        x.append(s[i:i+23])
    return ' \n'.join(x)
print(ligne(s))

#while i in range(0,len(s), 23):
    #x.append(s[i:i+23])
    #print(x[i])



#def ligne (s):
   # x
    
    
   # while i in range (0, len(s), 23):
        #x.append(s[i:i+23])
    #return x
        
        
#print (ligne(s))
        

#print([s[i:i+23] for i in range(0, len(s), 23)])
```

    Onze ans déjà que cela  
    passe vite Vous vous ét 
    iez servis simplement d 
    e vos armes la mort n‘é 
    blouit pas les yeux des 
     partisans Vousaviez vo 
    s portraits sur les mur 
    s de nos villes
    



```python
from re import findall

s = "Onze ans deja que cela passe vite Vous "
s += "vous étiez servis simplement de vos armes la "
s += "mort n‘éblouit pas les yeux des partisans Vous "
s += "aviez vos portraits sur les murs de nos villes"
x=s.split()
i=0
motif=('[A-Z][a-z]+ \s',s)
motif1= ('')
x1=[]
i=0
while i < len(range(0,23)):
    print(s[1])
    #if motif:
       # print(motif)
        #if motif1:
         #   print(s[i],end='')
```


```python

```
