#import "../../config.typ": config, exercise, proof, cls, ip, conv

#show: doc => config([Tarea 7], doc)
1.57, 1.58, 1.59, 1.64 (checa el Teorema de la Categoría de Baire en el Munkres o en algún otro libro de topología), 2.4, 2.8 y 2.9.


#exercise[1.57][Sea $X$ un e.B y sea $C$ un conjunto compacto en $X$. ¿Se cumple que $conv(C)$ es compacto?]

#exercise[1.58][Sea $C$ un conjunto compacto en un e.B finito-dimensional $X$. Muestra que $conv(C)$ es compacto. ]

#exercise[1.59][Sea ${K_i}$ una familia finita de conjuntos convexos compactos en $RR^n$ tal que toda subfamilia de 
$n+1$ elementos tiene intersección no vacía. El Teorema de Helly asegura que $sect K_i != emptyset$. Pruebalo para $n=1$.
Muestra un ejemplo para $n=2$ que $n+1$ es necesario.]

#exercise[1.64][Sea $X$ un e.B infinito-dimensional. Muestra que $X$ admite una base de Hammel (algebraica) no contable.
Por lo tanto $c_(00)$ no puede ser e.B.]

#exercise[2.4][Sea $f$ un f.l en un e.B $X$. Muestra que $f$ es continua ssi $f^(-1)(0)$ es cerrado. 
#footnote[Podemos notar que $X$ es un espacio métrico, por lo cual ${0}$ es cerrado y por tanto ]
Muestra que si $f$ no es continua, entonces $f^(-1)(0)$ es denso en $X$. ]

#proof[
  Primero veamos que $f$ es continua ssi $f^(-1)(0)$ es cerrado. Supongamos que $f$ es continua y sea 
  ${x_n} subset f^(-1)(0)$ una sucesión  tal que $x_n -> x in X$, por la continuidad de $f$ obtenemos que $f(x_n) -> f(x)$ y 
  ademas podemos notar que $f(x_n) = 0$ para todo $n in NN$, lo cual implica que $f(x_n) -> 0$, por 
  la unicidad del limite tenemos que $f(x) = 0$ y por tanto $x in f^(-1)(0)$. De lo anterior vemos que $f^(-1)(0)$ es cerrado.

  Supongamos ahora que $f^(-1)(0)$ es cerrado y sea ${x_n} subset X$ una sucesión tal que $x_n -> x in X$, lo cual implica que 
  $x_n -x -> 0$.


  Supongamos ahora que $f$ no es continua.
]

#exercise[2.8][Encuentra un mapeo lineal discontinuo $T$ de un e.B $X$ en si mismo tal que $"Ker"(T)$ es cerrado. ]

#exercise[2.9][Si $X$ es un e.B infinito-dimensional, muestra que existen conjuntos convexos $C_1, C_2$ 
tales que $C_1 union C_1 = X$, $C_1 sect C_2 = emptyset$ y tanto $C_1$ como $C_2$ son densos en $X$.]

