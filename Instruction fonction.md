
3- Arguments positionnels et Arguments par mot-clé :
====================================================


3-1 Arguments positionnels:
---------------------------


Lorsqu’on déﬁnit une fonction def fct(x, y): les arguments x et y sont appelés arguments positionnels (en anglais positional arguments). 
Il est strictement obligatoire de les préciser lors de l’appel de la fonction. 
De plus, il est nécessaire de respecter le même ordre lors de l’appel que dans la déﬁnition de la fonction. Dans l’exemple ci-dessus, 2 correspondra à x et 3 correspondra à y. 
Finalement, tout dépendra de leur position, d’où leur qualiﬁcation de positionnel.


exemple:


                >>> def fois(x, y):
                ... return x*y
                …
                >>> fois(2, 3) 
                6
                >>> fois(2)
                Traceback (most recent call last):
                File "<stdin>", line 1, in <module> 
                TypeError: fois() missing 1 required positional argument: 'y'



3-1 Arguments par mot-clé:
--------------------------


Un argument déﬁni avec une syntaxe def fct(arg=val): est appelé argument par mot-clé (en anglais keyword argument).
Le    passage d’un tel argument lors de l’appel de la fonction est facultatif. 
Ce type d’argument ne doit pas être confondu avec les arguments positionnels présentés ci-dessus, dont la syntaxe est def fct(arg):.


exemple :


                >>> def fct(x=0, y=0, z=0): 
                ... return x, y, z 
                ... 
                >>> fct() 
                (0, 0, 0) 
                >>> fct(10) 
                (10, 0, 0) 
                >>> fct(10, 8) 
                (10, 8, 0) 
                >>> fct(10, 8, 3) 
                (10, 8, 3)




4- Variables locales et Variable globales :
============================================


4-1 variables locales :
------------------------
 Une variable est dite locale lorsqu’elle est créée dans une fonction. Elle n’existera et ne sera visible que lors de l’exécution de ladite fonction. 


4-2 Variables globales : 
------------------------
Une variable est dite globale lorsqu’elle est créée dans le programme principal. Elle sera visible partout dans le programme.


4-3 Utilisation de la Variable globale :
-----------------------------------------
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
