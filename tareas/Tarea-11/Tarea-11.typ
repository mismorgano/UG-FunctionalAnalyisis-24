#import "../../config.typ": config, exercise, proof, cls


#show: doc => config([Tarea 11], doc)

2.34, 2.35, 2.36, 2.38, 2.39, 2.40 y 2.41.

#exercise[2.34][
  Sea $T in cal(B)(X, Y)$. Prueba lo siguiente:
  + $"Ker"(T) = T^*(Y^*)_perp$ y $"Ker"(T^*) = T(X)^perp$.
  + $cls(T(X)) = "Ker"(T^*)_perp$ y $cls(T^*(Y^*)) subset "Ker"(T)^perp$.
]

#exercise[2.35][
  Sean $x, Y$ espacios normados, $T in cal(B)(X, Y)$. Considera $hat(T)(hat(x)) = T(x)$ como un operador de $X slash "Ker"(T)$ en $cls(T(X))$.
  Entonces obtenemos $hat(T)^*: cls(T(X))^* -> (X slash "Ker"(T))^*$.
  Usando la proposición 2.7 y que $cls(T(X))^perp = T(X)^perp = "Ker"(T^*)$ podemos suponer que $hat(T)^*$ es un o.l de $Y^* slash "Ker"(T^*)$ en $"Ker"(T)^perp subset X^*$. 
  Por otro lado, para $T^*: Y^* -> X^*$ podemos considerar $hat(T^*): Y^* slash "Ker"(T^*) -> X^*$. Muestra que $hat(T)^* = hat(T^*)$.
]


#exercise[2.36][
  Sean $X, Y$ espacios de Banach y $T in cal(B)(X, Y)$. 
  Muestra que $T$ mapea $X$ sobre un conjunto denso en $Y$ ssi $T^*$ mapea $Y^*$ uno a uno en $X^*$.
]

#exercise[2.38][
  Sean $X, Y$ espacios de Banach y $T in cal(B)(X, Y)$. Si $T$ es un isomorfismo en $Y$, ¿Es $T^*$ necesariamente un isomorfismo en $X^*$?
]

#exercise[2.39][
  Sean $X,Y$ espacios de Banach y $T in cal(B)(X, Y)$. Muestra que:
  + $T^*$ es sobre ssi $T$ es un isomorfismo en $Y$.
  + $T$ es sobre ssi $T^*$ es un isomorfismo en $X^*$.
  + $T(X)$ es cerrado en $Y$ ssi $T^*(Y^*)$ es cerrado en $X^*$.
]

#exercise[2.40][
  Muestra que no existe $T in cal(B)(cal(l)_2, cal(l)_1)$ tal que 
  $T$ es un mapeo sobre.
]

#exercise[2.41][
  Sean $X, Y$ espacios de Banach, $T in cal(B)(X, Y)$. Muestra que:
  + $T$ es un isomorfismo de $X$ sobre $Y$ ssi $T^*$ es un isomorfismo de $Y^*$ sobre $X^*$.
  + $T$ es una isometria de $X$ sobre $Y$ ssi $T^*$ es una isometria de 
    $Y^*$ sobre $X^*$.
]

