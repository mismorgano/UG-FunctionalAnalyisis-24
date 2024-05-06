#import "../../config.typ": config, exercise, proof

#show: doc => config( [Tarea 2], doc)
#let cls(S) = $overline(#S)$

#exercise[1.10][Muestra que para todo $p>=1$, $l_p$ es linealmente isometrico a un subespacio de $L_p [0, 1]$]

#proof[Definamos para todo $n in NN$ 
  $ f_n = (n(n+1))^(1/p) cal(chi)_[1/(n+1), 1/n] $.
  Mostraremos que $l_p$ es isometrico a $"span"(f_n)$.]

#exercise[1.13][Sea $Gamma$ un conjunto y $p in [0, infinity]$. Muestra que $c_0(Gamma)$ y $l_p(Gamma)$ son 
espacios de Banach]

#exercise[1.15][Sea $cal(L)$ un espacio normado de todas las funciones Lipschitz  de un espacio de Banach $X$ que 
son iguales a cero $0$ en el origen, bajo la norma 
$ norm(f) = sup{(abs(f(x) - f(y)))/norm(x-y); x, y in X}. $
Muestra que $cal(L)$ es un espacio de Banach.]


#exercise[1.18][Sea $Y$ un subespacio cerrado de un espacio normado $X$. Muestra que si $Y$ y $X/Y$ son espacios de 
Banach, entonces tambien lo es $X$.]

#proof[Sea ${x_n}$ una sucesión de Cauchy en $X$. ]

#exercise[1.19][Sean $Y, Z$ subespacios de un espacio de Banach $X$ tales que $Y$ es isomorfico a $Z$. 
¿Son $X/Y$ y $X/Z$ isomorficos?]

#exercise[1.20][Muestra que la distancia $d(bb(x))$ de un punto $bb(x) = (x_i) in l_infinity$ a $c_0$ es igual 
a $limsup_(i -> infinity) abs(x_i)$. Entonces, la norma en $l_infinity/c_0$ es $norm([x]) = limsup_(i -> infinity) abs(x_i)$ ]

#proof[Notemos que 
$ d(bb(x), c_0) &= inf {norm(x - y) : y in c_0} \ 
                &= sum {sup( abs(x_i - y_i))}$]

#exercise[1.21][Sean $norm(dot)_1$ y $norm(dot)_2$ son dos normas en un e.v $X$. Sean $B_1$ y $B_2$ las bolas cerradas 
unitarias de $(X, norm(dot)_1)$ y $(X, norm(dot)_2)$ respectivamente. Prueba que $norm(dot)_1 <= C norm(dot)_2$ 
( esto es, $norm(x)_1 <= C norm(x)_2$ para todo $x in X$) ssi $1/C B_2 subset B_1$.] increible 

#proof[ Supongamos primero que $norm(dot)_1 <= C norm(dot)_2$. Sea $y in 1/C B_2$ entonces existe $x in B_2$ tal que $y = 1/C x$, 
por hipotesis tenemos que
$ norm(y)_1 =  norm(x/C)_1 <= C norm(x/C)_2 = C/C norm(x)_2 = norm(x)_2 <=1, $
por lo cual $y in B_1$ y por tanto $1/C B_2 subset B_1$.

Ahora supongamos que $1/C B_2 subset B_1$. Sea $x in X$ consideremos $y = x/(norm(x)_2)$ podemos notar que $norm(y)_2 = 1$ entonces $y in B_2$ 
por hipotesis se sigue que $1/C y in B_1$ lo cual implica que 
$ 1>= norm(y/C)_1 = 1/C norm(x/norm(x)_1) = 1/(C norm(x)_2) norm(x)_1, $
por lo cual se cumple que $norm(x)_1 <= C norm(x)_2$, como $x$ fue arbitrario obtenemos que $norm(dot)_1 <= C norm(dot)_2$.
]
