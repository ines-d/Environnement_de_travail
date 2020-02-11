```python
#Ajouter une méthode capsdown() qui passe en minuscule les éléments de la classe « superstring ».

class superstring :
    def __init__(self, chaine):
        self.ch = chaine
    def ajoute(self, char):
        self.ch += char
    def insert(self,char, i):
        self.ch = self.ch[:i] + char + self.ch[:i]
    def capsdown(self):
        self.ch = self.ch.lower()
    def tri(self, char):
        self.ch = self.ch.split()
    def __str__(self):
        return self.ch
        
s1 = superstring(" Ecoutez bien c'est important")
s1.ajoute("ce que je dis !")
s1.insert(" très",18)
s1.capsdown()
print(s1)
```

     ecoutez bien c'es très ecoutez bien c'es



```python
x= "hello world"
print(x)
x.split()
sorted(x.split())
x='_'.join(x)
print (x)



```

    hello world
    h_e_l_l_o_ _w_o_r_l_d



```python
# Ajouter une méthode tri() qui trie les mots de la classe « superstring » par ordre alphabétique. Utiliser les méthodes split(), sorted() et join().

class superstring :
    def __init__(self, chaine):
        self.ch = chaine
    def ajoute(self, char):
        self.ch += char
    def insert(self,char, i):
        self.ch = self.ch[:i] + char + self.ch[:i]
    def capsdown(self):
        self.ch = self.ch.lower()
    def tri(self, char):
        self.ch = self.ch.split()
    def __str__(self):
        return self.ch
    def tri(self):
        self.ch.split()
        self.ch = sorted(self.ch.split())
        self.ch = '_'.join(self.ch)
        
s1 = superstring(" Ecoutez bien c'est important")
s1.ajoute("ce que je dis !")
s1.insert(" très",18)
s1.capsdown()
s1.tri()
print(s1)
```

    bien_bien_c'es_c'es_ecoutez_ecoutez_très



```python
# Modifier la méthode __str__ de façon à avoir un affichage de la forme « type : superstring, content : ECOUTEZ BIEN C'EST TRÈS IMPORTANT CE QUE JE DIS ! ».


class superstring :
    def __init__(self, chaine):
        self.ch = chaine
    def ajoute(self, char):
        self.ch += char
    def insert(self,char, i):
        self.ch = self.ch[:i] + char + self.ch[:i]
    def capsdown(self):
        self.ch = self.ch.lower()
    def tri(self, char):
        self.ch = self.ch.split()
    def __str__(self):
        return 'type : superstrind, content:' + self.ch.upper()+'!'
    def tri(self):
        self.ch.split()
        self.ch = sorted(self.ch.split())
        self.ch = '_'.join(self.ch)
        
s1 = superstring(" Ecoutez bien c'est important")
s1.ajoute("ce que je dis !")
s1.insert(" très",18)
s1.capsdown()
s1.tri()
print(s1)
```

    type : superstrind, content:BIEN_BIEN_C'ES_C'ES_ECOUTEZ_ECOUTEZ_TRÈS!



```python
# Ajouter une méthode qui vérifie si deux formulaires renvoient à la même personne. 

class formulaire:
    def __init__ (self, nom, prenom, anneeNaissance):
        self.nom = nom.upper()
        self.prenom = prenom.upper()
        self.anneeNaissance = anneeNaissance
    def age (self):
        return 2020 - self.anneeNaissance
    def majeur(self):
        return self.age() >= 18
    def memeFamille (self, formulaire):
        return self.nom == formulaire.nom
    def memePersonne (self, formulaire):
        return self.nom == formulaire.nom and self.prenom == formulaire.prenom and self.anneeNaissance == formulaire.anneeNaissance
        # si on met une vergule a la place de and il nous affiche 
    def __str__(self, formulaire):
        return self
        
    

    
jd = formulaire ('Doe', 'John', 2005)
ad = formulaire ('doe', 'Alice', 2000)
dd = formulaire ('doe', 'Alice', 2000)

print(jd.majeur())
print(ad.majeur())
print(jd.memeFamille(ad))
print(jd.memePersonne(ad))
print(ad.memePersonne(dd))



```

    False
    True
    True
    False
    True



```python
from operator import attrgetter
jd = formulaire ('Doe', 'John', 2005)
ad = formulaire ('doe', 'Alice', 2000)
fr = [jd,ad]
    
sorted(fr, key= attrgetter('anneeNaissance'))
for i in fr :
    print(i)
```


    ---------------------------------------------------------------------------

    TypeError                                 Traceback (most recent call last)

    <ipython-input-35-42a145892280> in <module>
          6 sorted(fr, key= attrgetter('anneeNaissance'))
          7 for i in fr :
    ----> 8     print (i)
    

    TypeError: __str__() missing 1 required positional argument: 'formulaire'



```python
# Faire en sorte qu’on puisse afficher les formulaires sous la forme[nom, prenom, anneeNaissance]. Créer une liste de formulaire et triez la par ordre de naissance.
from operator import attrgetter

class formulaire:
    def __init__ (self, nom, prenom, anneeNaissance):
        self.nom = nom.upper()
        self.prenom = prenom.upper()
        self.anneeNaissance = anneeNaissance
    def age (self):
        return 2020 - self.anneeNaissance
    def majeur(self):
        return self.age() >= 18
    def memeFamille (self, formulaire):
        return self.nom == formulaire.nom
    def memePersonne (self, formulaire):
        return self.nom == formulaire.nom and self.prenom == formulaire.prenom and self.anneeNaissance == formulaire.anneeNaissance
    def __str__ (self):
        return self.nom + ',' + self.prenom + ',' + str(self.anneeNaissance)
   
    

    
jd = formulaire ('Doe', 'John', 2005)
ad = formulaire ('doe', 'Alice', 2000)
ines = formulaire ('dridi', 'ines', 2010)
li=[jd,ad, ines]

print(jd.majeur())
print(ad.majeur())
print(jd.memeFamille(ad))
print(jd.memePersonne(ad))

sorted(li, key= attrgetter('anneeNaissance'))

for i in li:
    print(i)
```

    False
    True
    True
    False
    DOE,JOHN,2005
    DOE,ALICE,2000
    DRIDI,INES,2010



```python
# 2 ème methode pour la question 2

class formulaire:
    def __init__ (self, nom, prenom, anneeNaissance):
        self.nom = nom.upper()
        self.prenom = prenom.upper()
        self.anneeNaissance = anneeNaissance
    def age (self):
        return 2020 - self.anneeNaissance
    def majeur(self):
        return self.age() >= 18
    def memeFamille (self, formulaire):
        return self.nom == formulaire.nom
    def memePersonne (self, formulaire):
        return self.nom == formulaire.nom and self.prenom == formulaire.prenom and self.anneeNaissance == formulaire.anneeNaissance
    def __str__(self):
        return '[' + self.nom + ',' + self.prenom + ', %s]' % (self.anneeNaissance)
    def __repr__(self):
        return self.anneeNaissanse

    
jd = formulaire ('Doe', 'John', 2005)
ad = formulaire ('doe', 'Alice', 2000)
ines= formulaire ('dridi', 'ines', 2010)
li=[jd,ad, ines]

print(jd.majeur())
print(ad.majeur())
print(jd.memeFamille(ad))
print(jd.memePersonne(ad))

for i in li:
    print (i.anneeNaissance)
    
for i in li:
    print(i)
    

```

    False
    True
    True
    False
    2005
    2000
    2010
    [DOE,JOHN, 2005]
    [DOE,ALICE, 2000]
    [DRIDI,INES, 2010]



```python
# 3ème méthode

class formulaire:
    def __init__ (self, nom, prenom, anneeNaissance):
        self.nom = nom.upper()
        self.prenom = prenom.upper()
        self.anneeNaissance = anneeNaissance
    def age (self):
        return 2020 - self.anneeNaissance
    def majeur(self):
        return self.age() >= 18
    def memeFamille (self, formulaire):
        return self.nom == formulaire.nom
    def memePersonne (self, formulaire):
        return self.nom == formulaire.nom and self.prenom == formulaire.prenom and self.anneeNaissance == formulaire.anneeNaissance
    def __str__(self):
        return '['+self.nom + ',' + self.prenom + ',' + str(self.anneeNaissance) +']'
    

    
jd = formulaire ('Doe', 'John', 2005)
ad = formulaire ('doe', 'Alice', 2000)
ines= formulaire ('dridi', 'ines', 1981)
li=[jd,ad, ines]

print(jd.majeur())
print(ad.majeur())
print(jd.memeFamille(ad))
print(jd.memePersonne(ad))


li= sorted(li, key=lambda x:x.anneeNaissance)
for i in li:
    print (i)
```

    False
    True
    True
    False
    [DRIDI,INES,1981]
    [DOE,ALICE,2000]
    [DOE,JOHN,2005]



```python
from random import randrange

valeurs = [i for i in range(1,11)]
couleurs = [i for i in range(1,5)]

nbTours = 7 
score = 0

paquet = [(v, c) for v in valeurs for c in couleurs]
main1, main2 = [], []

for i in range(nbTours):
    x= paquet [randrange(len(paquet))] # Le joueur 1 tire une carte aléatoirement dans le paquet
    main1.append(x) # La carte est ajouté à la main du joueur 1
    paquet.remove(x) # La carte tiré supprimé du paquet
    y= paquet[randrange(len(paquet))] # Idem pour le joueur 2 
    main2.append(y)
    paquet.remove(y)
    
for i in range(nbTours):
        
    if main1[i][0] > main2[i][0] or ( main1[i][0] == main2[i][0] and main1[i][1] > main2[i][1]) :
            
        score += 1
    else:
        score -= 1

print("Vainqueur : " + ("joueur 1" if score > 0 else "joueur 2 "))
    
    
    
```

    Vainqueur : joueur 1



```python
#Créer une fonction plusGrandQue() qui doit faire la comparaison entre deux cartes (représenté par des tuples) et donc remplacer la troisième partie du code.

from random import randrange

valeurs = [i for i in range(1,11)]
couleurs = [i for i in range(1,5)]

nbTours = 7 
score = 0

paquet = [(v, c) for v in valeurs for c in couleurs]
main1, main2 = [], []

for i in range(nbTours):
    x= paquet [randrange(len(paquet))] # Le joueur 1 tire une carte aléatoirement dans le paquet
    main1.append(x) # La carte est ajouté à la main du joueur 1
    paquet.remove(x) # La carte tiré supprimé du paquet
    y= paquet[randrange(len(paquet))] # Idem pour le joueur 2 
    main2.append(y)
    paquet.remove(y)
    
def plusGrandQue(self):
    for i in range(nbTours):
        if main1[i][0] > main2[i][0] or ( main1[i][0] == main2[i][0] and main1[i][1] > main2[i][1]) :
            score += 1
        else:
            score -= 1

print("Vainqueur : " + ("joueur 1" if score > 0 else "joueur 2 "))
```

    Vainqueur : joueur 2 



```python
# Créer une fonction piocher() qui doit sélectionner l’ensemble des carte tiré par un joueur et donc remplacer la deuxième partie du code .

from random import randrange

valeurs = [i for i in range(1,11)]
couleurs = [i for i in range(1,5)]

nbTours = 7 
score = 0

paquet = [(v, c) for v in valeurs for c in couleurs]
main1, main2 = [],[]

def piocher (self):
    return
    for i in range(nbTours):
        x= paquet [randrange(len(paquet))] # Le joueur 1 tire une carte aléatoirement dans le paquet
        main1.append(x) # La carte est ajouté à la main du joueur 1
        paquet.remove(x) # La carte tiré supprimé du paquet
        y= paquet[randrange(len(paquet))] # Idem pour le joueur 2 
        main2.append(y)
        paquet.remove(y)

    
def plusGrandQue (self):
    return 
    for i in range(nbTours):
        if main1[i][0] > main2[i][0] or ( main1[i][0] == main2[i][0] and main1[i][1] > main2[i][1]) :
            score += 1
        else:
            score -= 1

print("Vainqueur : " + ("joueur 1" if score > 0 else "joueur 2 "))


```

    Vainqueur : joueur 2 



```python
# Créer une classe « carte » ayant les attribut couleur et valeur. Elle devra être appelé dans la fonction plusGrandQue().

from random import randrange

valeurs = [i for i in range(1,11)]
couleurs = [i for i in range(1,5)]

nbTours = 7 
score = 0

paquet = [(v, c) for v in valeurs for c in couleurs]
main1, main2 = [],[]

class catre :
    
    def __init__ (self, couleur, valeur):
        self.couleur = couleur
        self.valeur = valeur
        
    def __repr__ (self):
        return '('+str(self.couleur)+','+str(self.valeur)+')'
    
    def piocher (self):
        return
        for i in range(nbTours):
            x= paquet [randrange(len(paquet))] # Le joueur 1 tire une carte aléatoirement dans le paquet
            main1.append(x) # La carte est ajouté à la main du joueur 1
            paquet.remove(x) # La carte tiré supprimé du paquet
            y= paquet[randrange(len(paquet))] # Idem pour le joueur 2 
            main2.append(y)
            paquet.remove(y)

    
    def plusGrandQue (self):
        return 
        for i in range(nbTours):
            if main1[i][0] > main2[i][0] or ( main1[i][0] == main2[i][0] and main1[i][1] > main2[i][1]) :
                score += 1
            else:
                score -= 1

print("Vainqueur : " + ("joueur 1" if score > 0 else "joueur 2 "))

```

    Vainqueur : joueur 2 



```python
""""# Créer une classe « partie » qui nous permettra d’effectuer différentes 
partie avec des jeux différents. C’est-à-dire que l’on peut choisir :
• Un nombre de couleurs autre que 4.
• Un nombre de valeurs autre que 10.
• Un nombre de tour autre que 7."""

from random import randrange

valeurs = [i for i in range(1,11)]
couleurs = [i for i in range(1,5)]

nbTours = 7 
score = 0

paquet = [(v, c) for v in valeurs for c in couleurs]
main1, main2 = [],[]

class catre :
    
    def __init__ (self, couleur, valeur):
        self.couleur = couleur
        self.valeur = valeur
        
    def __repr__ (self):
        return '('+str(self.couleur)+','+str(self.valeur)+')'
    
class partie(couleur, valeur, nbTours):
    
    def __init__ (self, nbcouleur, nbvaleur, nbTours):
        self.nbcouleur = nbcouleur
        self.nbvaleur = nbcouleur
        self.nbTours = nbTours
    
    def jouer (self):
        self.main1, self.main2 = piocher(paquet, nbTours)
        
        self.score = 0
        for i in range(self.nbTours):
            if plusGrandQue(self.main[i],self.main2[i])
    
    def piocher (self):
        return
        for i in range(nbTours):
            x= paquet [randrange(len(paquet))] # Le joueur 1 tire une carte aléatoirement dans le paquet
            main1.append(x) # La carte est ajouté à la main du joueur 1
            paquet.remove(x) # La carte tiré supprimé du paquet
            y= paquet[randrange(len(paquet))] # Idem pour le joueur 2 
            main2.append(y)
            paquet.remove(y)

    
    def plusGrandQue (self):
        return 
        for i in range(nbTours):
            if main1[i][0] > main2[i][0] or ( main1[i][0] == main2[i][0] and main1[i][1] > main2[i][1]) :
                score += 1
            else:
                score -= 1

print("Vainqueur : " + ("joueur 1" if score > 0 else "joueur 2 "))

```
