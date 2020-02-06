INSTRUCTION FONCTION 


1- Définition :
En programmation, les fonctions sont très utiles pour réaliser plusieurs fois la même opération au sein d’un programme. Elles rendent également le code plus lisible et plus clair en le fractionnant en blocs logiques.
Pour déﬁnir une fonction, Python utilise le mot-clé def et si on veut que celle-ci renvoie quelque chose, il faut utiliser le mot-clé return. Par exemple :
 >>> def carre(x):
  …         return x**2 
  …
 >>> print(carre(2)) 
 4
2- Renvoi de résultat :


3- Arguments positionnels et Arguments par mot-clé : 


3-1 Arguments positionnels:


Lorsqu’on déﬁnit une fonction def fct(x, y): les arguments x et y sont appelés arguments positionnels (en anglais positional arguments). 
Il est strictement obligatoire de les préciser lors de l’appel de la fonction. 
De plus, il est nécessaire de respecter le même ordre lors de l’appel que dans la déﬁnition de la fonction. Dans l’exemple ci-dessus, 2 correspondra à x et 3 correspondra à y. 
Finalement, tout dépendra de leur position, d’où leur qualiﬁcation de positionnel.


exemple:
 1 >>> def fois(x, y):
 2 ... return x*y
 3 …
 4 >>> fois(2, 3) 
 5 6
 6 >>> fois(2)
 7 Traceback (most recent call last):
 8 File "<stdin>", line 1, in <module> 
 9 TypeError: fois() missing 1 required positional argument: 'y'


3-1 Arguments par mot-clé:


Un argument déﬁni avec une syntaxe def fct(arg=val): est appelé argument par mot-clé (en anglais keyword argument).
Le    passage d’un tel argument lors de l’appel de la fonction est facultatif. 
Ce type d’argument ne doit pas être confondu avec les arguments positionnels présentés ci-dessus, dont la syntaxe est def fct(arg):.


exemple :
1 >>> def fct(x=0, y=0, z=0): 
2 ... return x, y, z 
3 ... 
4 >>> fct() 
5 (0, 0, 0) 
6 >>> fct(10) 
7 (10, 0, 0) 
8 >>> fct(10, 8) 
9 (10, 8, 0) 
10 >>> fct(10, 8, 3) 
11 (10, 8, 3)




4- Variables locales et Variable globales :


4-1 variables locales :
 Une variable est dite locale lorsqu’elle est créée dans une fonction. Elle n’existera et ne sera visible que lors de l’exécution de ladite fonction. 


4-2 Variables globales : 
Une variable est dite globale lorsqu’elle est créée dans le programme principal. Elle sera visible partout dans le programme.


4-3 Utilisation de la Variable globale :
Il peut se faire par exemple que vous ayez à définir une fonction qui soit capable de modifier une variable globale. Pour atteindre ce résultat, il vous suffira d’utiliser l’instruction global. Cette instruction permet d’indiquer - à l’intérieur de la définition d’une fonction - quelles sont les variables à traiter globalement.


def test():
    global b
    b = 5
    print(a, b)
    
a = 2
b = 7
test()
print(a, b)
2 5
2 5
