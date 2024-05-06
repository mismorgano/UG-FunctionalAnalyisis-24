#import "../../config.typ": config, exercise, ip, proof, cls, eps, int, conv

#show: doc => config([Tarea 5], doc)

#exercise[1.42][Sea $H$ un e.H. Muestra que existe un conjunto abstracto $Gamma$ tal que $H$ es isométrico a $l_2(Gamma)$.]
#proof[
  Por el Teorema 1.35 existe base ortonormal ${e_gamma}_(gamma in Gamma)$.
] 

#exercise[1.44][Supongamos que ${x^k}_(k=1)^infinity$ es uns sucesión ortonormal en $cal(l)_2$, donde $x^k = (x_i^k)$.
Muestra que $lim_(k -> infinity) (x_i^k) = 0 $ para todo $i in NN$. ]
#proof[

]
ni idea 
#exercise[1.45][Un e.B $X$ se dice de _cotipo 2_ si existe constante $C>0$ tal que para todos los vectores $x_1, dots, x_n in X$
tenemos que 
$ 1/2^n sum_(epsilon_i plus.minus 1) norm(sum_(i=1)^n e_i x_i) >= 1/C (sum_(i=1)^n norm(x_i)^2)^(1/2). $
Decimos que $X$ tiene _tipo 2_ si existe constante $C>0$ tal que para todos los vectores $x_1, dots, x_n in X$ tenemos que 
$ 1/2^n sum_(epsilon_i plus.minus 1) norm(sum_(i=1)^n e_i x_i) <= C (sum_(i=1)^n norm(x_i)^2)^(1/2). $
El _tipo/cotipo q_ se define de manera similar.

Tomando por hecho que el dado izquierdo de la expresión puede ser remplazado por $(1/2^n sum_(epsilon_i plus.minus 1) norm(sum_(i=1)^n e_i x_i))^(1/2)$,
muestra que si $X$ es un e.B isomorfo a un e.H, entonces $X$ is de tipo 2 y cotipo 2.
]
#proof[]

#exercise[1.46][Muestra que $l_4$ no es isomorfico a un subespacio de $l_2$.]

#exercise[1.48][Muestra que un conjunto acotado $M$ en $c_0$ es totalmente acotado ssi para todo $epsilon>0$
existe $n_0$ tal que $abs(x_n) <= epsilon$ para todo $x in M$ y $n>= n_0$. Formula y prueba el resultado análogo 
para los espacios $l_p$.]

#proof[
  Sea $M subset c_0$ acotado. Supongamos primero que $M$ es totalmente acotado entonces dado $eps>0$ existe $N in NN$ y $a_1, dots, a_N in c_0$ tal que 
  $ M subset union.big_(n=1)^N B_(eps/2) (a_n). #footnote[Aqui denotamos por $B_eps (x)$ a la bola abierta de radio $eps$ centrada en $a_n$.] $
  Lo anterior implica que dado $x in M$ existe $n in NN$ tal que 
  $x in B_(eps/2) (a_n)$, es decir $norm(x-a_n)_infinity < eps/2$.
  Por lo cual tenemos que $abs(x_k - a_k^n) < eps/2$ para todo $k in NN$.
  Por otro lado notemos que para $n=1, dots, N$ existen $M_n in NN$ tales que $abs(a_k^n) < eps/2$ para todo $k>= M_n$, pues $a_n in c_0$.
  Tomando $M= max(M_n)$ obtenemos que para $k>= M$ se cumple 
  $ abs(x_k) <= abs(x_k - a_k^n) + abs(a_k^n) < eps/2 + eps/2 = eps, $
  como queremos.

  Supongamos ahora que para todo $epsilon>0$ existe $n_0$ tal que $abs(x_n) <= epsilon$ para todo $x in M$ y $n > n_0$.
  Sea $eps > 0$, entonces existe $n_0$ que cumple lo anterior. Como $M$
  es acotado existe $C>0$ tal que $norm(x) < C$ para todo $x in M$, 
  lo anterior implica que $abs(x_n) < C$ para todo $n=1, dots, n_0$.
  Ademas es claro que $[-C, C] times dots times [-C, C] subset RR^(n_0)$ es acotado, por lo cual es totalmente acotado

]

#exercise[1.49][El cubo de Hilbert $C$ es definido como 
$ C := { x = (x_i) in l_2 : abs(x_i) <= 2^(-i) "para todo" i in NN }. $
Muestra que el cubo de Hilbert es compacto en $l_2$. ]

#exercise[1.51][Sea $C$ un conjunto convexo es un e.n $X$, supongamos que $"Int"(C) != emptyset$. 
Muestra que $cls("Int"(C)) = cls(C)$ y que $"Int"(cls(C)) = "Int"(C)$.]

#proof[
  Notemos primero que $cls(int(C)) subset cls(C)$, pues $int(C) subset C$.
  Por otro lado como $int(C) != emptyset$ existe $eps>0$ tal que $B_eps^circle.small (x_0) subset C$,
  luego, dado $x in C$ podemos notar que $conv(B_eps^circle.small (x_0) union {x}) subset C$, pues $C$ 
  es convexo

  el cual tiene puntos en $int(C)$ arbitrariamente cerca de $x$ y por tanto $x in cls(int(C))$

  Para probar que $int(cls(C)) = int(C)$, primero notemos que $int(C) subset int(cls(C))$ pues $C subset cls(C)$.
]