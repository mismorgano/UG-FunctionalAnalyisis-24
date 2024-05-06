#import "../../config.typ": config, exercise, ip, proof

#show: doc => config([Tarea 4], doc)
#let cls(S) = $overline(#S)$

#exercise[1.30][Muestra que un e.B $X$ es separable ssi $S_X$ es separable.]

#proof[ Primero supongamos que $X$ es separable, como $S_X subset X$ se sigue que $S_X$ es separable. 
Ahora manera de verlo es notando que $T: X -> S_X$ dada por $T(x) = x/norm(x)$ es continua.

Supongamos ahora que $S_X$ es separable donde ${x_n}$ es denso en $S_X$. Sea ${q_r}$ una sucesión densa en $KK$, consideremos 
$ M := union.big_(r in NN) union.big_(n in NN) {q_r x_n}, $
podemos notar que $M$ es numerable pues es la union numerable de conjuntos numerables.

Veamos que $M$ es denso en $X$. Dado $x in X$ y $epsilon>0$ notemos que $x/norm(x) in S_X$ por la densidad de ${x_n}$ es $S_X$
existe $x_n in {x_n}$ tal que 
$ epsilon/(2norm(x)) > norm(x/norm(x) - x_n) = norm((x-norm(x)x_n)/norm(x)) = 1/norm(x)norm(x-norm(x)x_n), $
lo cual implica que $ norm(x-norm(x)x_n) < epsilon/2. $
Por otro lado, por la densidad de ${q_r} in KK$ existe $q_r in {q_r}$ tal que $ norm(norm(x) - q_r) < epsilon/(2 norm(x_n)), $
lo que implica
$ epsilon/2 > norm(x_n)norm(norm(x) - q_r) = norm(x_n  (norm(x) - q_r)) = norm(norm(x)x_n - q_r x_n). $
De lo anterior obtenemos que 
$ norm(x - q_r x_n) <= norm(x - norm(x)x_n) + norm(norm(x)x_n - q_r x_n) < epsilon/2 + epsilon/2 = epsilon, $
como queremos.
]

#exercise[1.31][Sea $Y$ un subespacio cerrado de un e.B $X$. Muestra que si $X$ es separable entonces $Y$ y $X slash Y$
son separables. Muestra que si $Y$ y $X slash Y$ son separables, entonces $X$ es separable.]

#exercise[1.32][Encuentra dos (obviamente no cerrados) subespacios $F_1$ y $F_2$ de un e.B $X$ tal que $F_1 sect F_2 = {0}$
y ambos son densos en $X$.]

#exercise[1.33][Muestra que $B C(0, 1)$ de funciones continuas y acotadas en $(0, 1)$ con la norma sup no es separable.]

#exercise[1.39][Sea $H$ un e.H. Prueba la iguladad generalizada del paralelogramo. Si $x_1, dots, x_n in H$, entonces 
$ sum_(epsilon_i = plus.minus 1) norm(sum_(i=1)^n epsilon_i x_i)^2 = 2^n sum_(i=1)^n norm(x_i)^2. $]

#proof[Procedamos por inducción sobre $n$. Para $n=2$ el resultado ]

#exercise[1.40][Sea $X$ un e.B cuya norma $norm(dot)$ satisface la iguladad del paralelogramo. 
Define $ip(x, y)$ por la identidad de poralización y prueba que $ip(x, y)$ es un producto interno. ]

#proof[ Definimos $ip(dot, dot):X times X -> KK$ como 
$ ip(x, y) = 1/4(norm(x+y)^2 - norm(x-y)^2), $
si $KK = RR$ y 
$ ip(x, y) = 1/4(norm(x+y)^2 - norm(x-y)^2 + i norm(x+i y)^2 - i norm(x-i y)^2). $
Veamos que $ip(dot, dot)$ es un producto interno. Supongamos primero que $KK = RR$
+ Sea $y in X$ notemos que la función $x -> ip(x, y)$ es lineal pues 
  $ ip(x+ b z, y) &= 1/4(norm(x+ b z +y)^2 - norm(x+ b z-y)^2)  \
                           &= 1/4(norm((x+y) + b z)^2 - norm((x-y) + b z)^2) \ 
                           &= 1/4(2norm(x+y)^2 + 2norm(b z)^2 - norm(x+y-b z)^2 + norm(x-y - b z)^2 - 2norm(x-y)^2 - 2norm(b z)^2) \
                           &= 1/4(2norm(x+y)^2  - norm(x+y-b z)^2 + norm(x-y - b z)^2 - 2norm(x-y)^2 ) $
+
+ Notemos que $ip(x, x) = 1/4 norm(2x)^2 = norm(x)^2>=0$
+ Se cumple que $ip(x, x) = 0$ ssi $ norm(x)^2 = 0$ ssi $norm(x) =0$ ssi $x=0$
]

#exercise[1.41][Encuentra un e.H $H$ y su subespacio $F$ tal que $H != F + F^perp$.
Esto muestra que la suposición de cerrado en el Teorema 1.33 es crucial.]