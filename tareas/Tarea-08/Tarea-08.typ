#import "../../config.typ": config, exercise, proof, cls, ip, conv

#show: doc => config([Tarea 8], doc)

#exercise[2.10][Sea $X$ un e.B, $f in S_(X^*)$. Muestra que para todo $x in X$ tenemos que $"dist"(x, f^(-1)(0)) = abs(f(x))$. ]
#proof[
  Sea $x in X$, notemos que $f^(-1)(0) = {y in S_X: f(y) = 0}$
]

#exercise[2.11][Sea ${x_i}_(i=1)^n$ un conjunto linealmente independiente en un e.B y ${alpha_i}$ un conjunto de números reales.
Muestra que existe $f in X^*$ tal que $f(x_i)=alpha_i$ para $i = 1, dots, n$. ]

#exercise[2.14][Sea $A, B$ conjuntos convexos en un e.B $X$. Muestra que si $A subset B$ entonces $mu_B subset mu_A$.
Muestra que $mu_(c A)(x)= 1/c mu_A(x)$ para $c>0$. ]

#exercise[2.15][Sea $C$ un subconjunto convexo de un e.B real $X$ que contiene una vecindad del $0$ (entonces $mu_C$ es un).
Prueba lo siguiente:
+ Si $C$ es abierto, entonces $C = {x; mu_C(x) < 1}.$ Si $C$ también es cerrado, entonces $C = {x; mu_C(x) <= 1}$. 
+ Existe $c>0$ tal que $mu_C(x) <= c norm(x)$.
+ Si $C$ es ademas simetrico, entonces $mu_C$ es una seminorma, es decir, 
+ Si $C$ es ademas simetrico y acotado, entonces $mu_C$ es una norma equivalente a $norm(dot)_X$. 
  En particular, es completo, es decir, $(X, mu_C)$ es un e.B.]

#exercise[2.16][Sea $Y$ un subespacio de un e.B $X$ y $norm(dot)$ es una norma equivalente en $Y$.
Muestra que $norm(dot)$ puede ser extendida a una norma equivalente en $X$.]

#exercise[2.18][Muestra  que si $Y$ es un subespacio de un e.B $X$ y $X^*$ es separable, entonces $Y^*$ también.]

#exercise[2.19][Muestra que $l_1$ no es isomorfo a un subespacio de $c_0$.]