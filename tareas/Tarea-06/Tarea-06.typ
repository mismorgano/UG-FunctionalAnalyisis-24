#import "../../config.typ": config, exercise, proof, cls, ip, conv

#show: doc => config([Tarea 6], doc)

1.52, 1.53, 1.54, 1.55, 1.56, 2.2 y 2.3.
#exercise[1.52][Sea $A$ un abierto en un e.n $X$. Muestra que $"con"(A)$ es abierto.]

#proof[
  Sea $x in conv(A)$ 
]

#exercise[1.53][¿Es la envolvente convexa de un conjunto cerrado en $RR^2$ cerrado?]

#exercise[1.54][Sean $K, C$ subconjuntos de un e.n $X$.
+ Muestra que si $K, C$ son cerrados, entonces $K + C$ no es necesariamente cerrado.
+ Muestra que si $K$ es compacto y $C$ es cerrado, entonces $K + C$ es cerrado. 
  ¿ ES $"con"(K union C)$ cerrado?
+ Muestra que si $K$ es compacto y $C$ es cerrado y acotado, entonces $"con"(K union C)$ es cerrado. ]

#exercise[1.55][Sean $A, B$ compactos convexos es un e.B $X$. Muestra que $"conv"(A union B)$ y 
$A + B$ son compactos. Generaliza esto a un conjunto finito de conjuntos.]

#exercise[1.56][Sea $A$ un conjunto totalmente acotado en un e.B $X$. Muestra que $"conv"(A)$ es totalmente acotado.
Por lo tanto $"conv"(cls(A))$ es compacto.]

#exercise[2.2][Muestra que si $X$ es un e.B finito-dimensional, entonces todo funcional lineal sobre $X$ es
continuo en $X$.]

#proof[Sea ${e_1, e_2, dots, e_n}$ una base de $X$, dado $x in X$ existen $alpha_1, alpha_2, dots, alpha_n in KK$
tenemos que 
$ x = sum_(i=1)^n alpha_i e_i, $
luego 
$ norm(T(x)) $
por lo cual $ T(x) = T(sum_(i=1)^n ip(x, e_i) e_i) = sum_(i=1)^n ip(x, e_i) T(e_i) $] 

#exercise[2.3][Muestra que si $X$ es un e.B infinito-dimesional, entonces $X$ admite un funcional lineal discontinuo.] 
