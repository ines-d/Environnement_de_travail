```python
import math
a=3
b=-7
c=-23
D=b**2-4*a*c
print(D)
print ("racine carrée D =",math.sqrt(D))
```

    325
    racine carrée D = 18.027756377319946



```python
import math
RD=math.sqrt(D)
print (RD)
x1=(b-RD)/(2*a)
x2=(b+RD)/(2*a)
print ("x1=",x1)
print ("x2=",x2)
```

    18.027756377319946
    x1= -4.171292729553325
    x2= 1.837959396219991



```python
a=(217*256*71)+(101*440*71)+(86*440*256)
b=(440*256*71)
print ("a=",a)
print ("b=",b)
print ("le plus grand diviseur commun à a et b est", math.gcd(a,b))
```

    a= 16786472
    b= 7997440
    le plus grand diviseur commun à a et b est 8



```python
import math

h=float(input("hauteur en cm "))
R=float(input ("rayon en cm "))
V=(math.pi*(R**2)*h)/3
print ("Volume du cone est de ",V,"cm³")

```

    hauteur en cm 3
    rayon en cm 2
    Volume du cone est de  12.566370614359172 cm³



```python
a=float(input("entrer nombre "))
b=a%2
print ("le reste de la division par 2 est de ",b)
if b == 0:
    print ("nombre est paire")
else:
    print ("nombre est impaire")

```

    entrer nombre 4
    le reste de la division par 2 est de  0.0
    nombre est paire



```python
a=float(input("AB = "))
b=float(input("AC = "))
c=float(input("CB = "))
if a**2==(b**2)+(c**2) or b**2==(a**2)+(c**2) or c**2==(a**2)+(b**2):
    print ("Triangle rectangle")
    if a**2==(b**2)+(c**2):
        print ("AB est l'hypotenuse")
    elif b**2==(a**2)+(c**2):
        print ("AC est l'hypotenuse")
    elif c**2==(a**2)+(b**2):
        print ("CB est l'hypotenuse")
else:
    print ("Triangle non rectangle")
```

    AB = 3
    AC = 4
    CB = 5
    Triangle rectangle
    CB est l'hypotenuse



```python
x=0
x=float(input("entrer prix HT "))
b=x*1.2
while x != 0:
    x=float(input("entrer prix HT "))
    b= x*1.2
    print ("le prix TTC = ", b)
     
print ("fin")
```

    entrer prix HT 20
    entrer prix HT 20
    le prix TTC =  24.0
    entrer prix HT 10
    le prix TTC =  12.0
    entrer prix HT 5
    le prix TTC =  6.0
    entrer prix HT 0
    le prix TTC =  0.0
    fin



```python
c=[1,2,3,4,3,2,1] # première méthode 
if c[0]==c[6] and c[1]==c[5] and c[2]==c[4]:
    print ("c'est une liste palindrome")
else:
    print ("liste non palindrome")

```

    c'est une liste palindrome



```python
c=[1,2,3,4,3,3,1]
a=c.copy()
print (a)
a.reverse()
print (a)
for i in c:
    c[i]==a[i]
    print ("liste palindrome")
    break
else:
    print ("liste non palindrome")
```

    [1, 2, 3, 4, 3, 3, 1]
    [1, 3, 3, 4, 3, 2, 1]
    liste palindrome



```python
c=[1,2,3,4,3,3,1]
a=c.copy()
a.reverse()
print (a)
for i in c:
    c[i]==a[i]
    print ("palindrome")
print ("non palindrome")

```

    [1, 3, 3, 4, 3, 2, 1]
    palindrome
    palindrome
    palindrome
    palindrome
    palindrome
    palindrome
    palindrome
    non palindrome



```python

```


```python

```
