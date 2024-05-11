#import "../../config.typ": config, exercise, proof


#show: doc => config([Tarea 10], doc)

#exercise[2.26][
  Muestra que se cumple el  Teorema de la gráfica cerrada ssi se cumple 
  el principio del mapeo abierto.
]

#exercise[2.27][
  Sean, $X, Y$ espacios normados, $T in cal(B)(X, Y)$. Muestra que $hat(T) : X slash "Ker"(T) -> Y $ definido por $hat(T)(hat(x)) = T(x)$, 
  es un o.l acotado sobre $T(X)$.
]

#exercise[2.28][
  + Prueba directamente que si $X$ es un e.B y $f$ es un f.l no cero sobre $X$, entonces $f$ es un mapeo abierto sobre $KK$.
  + Sea $T:c_0 -> c_0$ el operador definido por $T((x_i)) = (1/i x_i)$.
    ¿Es $T$ un o.l acotado?, ¿Es $T$ un mapeo abierto?, ¿T mapea $c_0$ en un subconjunto denso en $c_0$?
]

#exercise[2.29][
  Sea $T$ un o.l (no necesariamente acotado) de un e.n $X$ sobre un e.n $Y$. Muestra que lo siguiente es equivalente:
  + $T$ es un mapeo abierto.
  + Existe $delta >0$ tal que $delta B_Y subset T(B_X)$.
  + Existe $M >0$ tal que para todo $y in Y$ existe $x in T^(-1)(y)$ que satisface $norm(x)_X <= M norm(y)_Y$.
]

#exercise[2.30][
  Sean $X, Y$ espacios normados, $T in cal(B)(X, Y)$. Muestra que si $X$ es completo y $T$ es un mapeo abierto, entonces $Y$ es completo.
]

#exercise[2.31][
  Sean $X, Y$ espacios de Banach, $T in cal(B)(X, Y)$. Muestra que si $T$ es uno a uno y $B_y^circle subset T(B_Y) subset B_Y$, 
  entonces $T$ es una isometria sobre $Y$.
]

#exercise[2.32][
  Sean $X, Y$ espacios de Banach y $T in cal(B)(X, Y)$. Muestra que lo siguiente es equivalente:
  + $T(X)$ es cerrado.
  + $T$ es un mapeo abierto cuando se considera sobre su imagen.
  + Existe $M > 0$ tla que para todo $y in T(X)$ existe $x in T^(-1)(y)$ que satisface $norm(x)_X <= M norm(y)_Y$.
]