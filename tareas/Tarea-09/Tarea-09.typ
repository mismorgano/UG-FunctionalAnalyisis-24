#import "../../config.typ": config, exercise, ip, proof, cls, eps, int, conv, span

#show: doc => config([Tarea 5], doc)

2.17, 2.20, 2.21, 2.22, 2.24 y 2.25.

#exercise[2.17][
  Sea $Y$ un subespacio de un e.B $X$ y $norm(dot)$ una norma equivalente en $Y$. 
  Muestra que $norm(dot)$ puede ser extendida a una norma equivalente en $X$.
]

#exercise[2.20][
  Sea $X$ un e.B.
  + Muestra que en $X^*$ tenemos que $X^perp = {0}$ y ${0} = X^*$.
    Muestra que en $X$ tenemos que $(X^*)_perp = {0}$ y ${0}_perp = X$.
  + Sea $A subset B$ subconjuntos de $X$. Muestra que $B^perp$ es un subespacio de $A^perp$.
]

#exercise[2.21][
  Sea $X$ un e.B. Muestra que:
  + $overline("span")(A) = (A^perp)_perp$ para $A subset X$.
  + $overline("span")(B) subset (B_perp)^perp$ para $B subset X^*$. Notar que en general no podemos poner igualdad.
  + $A^perp =((A^perp)_perp)^perp$ para $A subset X$ y $B_perp = ((B_perp)^perp)_perp$ para $B subset X^*$.
]

#exercise[2.22][
  Sea $X = RR^2$ con la normal $norm(x) = (abs(x_1)^4 + abs(x_2)^4)^(1/4).$
  Calcula directamente la norma dual en $X^*$ usando los multiplicadores de Lagrange.
]

#exercise[2.24][
  Muestra que $c^*$ es isometrico a $cal(l)_1$. 
]

#exercise[2.25][
  Sea $p in (1, infinity)$ y $X_n$ espacios de Banach para $n in NN$.
  Sea $X = (sum X_n)_p$ el espacio lineal normado de todas las sucesiones $x = {x_i}_(i=1)^infinity, x_i in X_i$, tal que $sum norm(x_i)_(X_i)^p < infinity$, con la norma $norm(x) = (sum norm(x_i)_(X_i)^p)^(1/p)$.
  Muestra que $X$ es un e.B y $X^*$ es isometrico a $(sum X_i^*)_q$ (donde $1/p + 1/q = 1$) de la siguiente manera: 
  para $f in X^*$ asignamos ${f_i}_(i=1)^infinity$ tal que $f_i in X_i^*$ y $f({x_i}_(i=1)^infinity) = sum f_i(x_i)$.
]
