#import "../../config.typ": config, exercise, proof

#show: doc => config([Tarea 3], doc)
#let cls(S) = $overline(#S)$

#exercise[1.17][Muestra que un e.n $X$ es espacio de Banach ssi $sum y_n$ converge siempre que $norm(y_n) <2^(-n)$ 
para todo $n in NN$.]
 
#proof[Sabemos que $X$ es un e.B ssi cualquier serie absolutamente convergente en $X$ converge.
Por lo cual mostraremos que cualquier serie absolutamente convergente en $X$ converge ssi 
$sum y_n$ converge siempre que $norm(y_n) <2^(-n)$ para todo $n in NN$.

Supongamos primero que cualquier serie absolutamente convergente en $X$ converge y notemos que $sum y_n$ es 
absolutamente convergente por lo tanto $sum y_n$ converge.

Supongamos ahora que $sum y_n$ converge siempre que $norm(y_n) <2^(-n)$ para todo $n in NN$. 
Sea $sum x_n$ absolutamente convergente, entonces para todo $n in NN$ existe $N_n$ tal que si $m > n >= N_n$
entonces $ sum_(k=N_n)^m norm(x_k) < 2^(-n) $
]

#exercise[1.22][Sean $norm(dot)_1$ y $norm(dot)_2$ dos normas equivalentes en un e.v $X$. Sean $B_1$ y $B_2$ las 
bolas unitarias cerradas en $(X, norm(dot)_1)$ y $(X, norm(dot)_2)$ respectivamente. Muestra que $B_1$ y $B_2$
son homeomorfas. ]

#proof[]

#exercise[1.23][Sea $X$ el e.n obtenido al tomar $c_0$ con la norma $norm(bb(x))_0 = sum 2^(-i) abs(x_i)$.
Muestra que $X$ no es un e.B.]

#exercise[1.24][Sea $X, Y$ espacios normados y $T in cal(B)(X, Y)$. Muestra que 
$ norm(T) = sup{norm(T(x))_Y; norm(x)_X < 1} = sup {norm(T(x))_Y; norm(x)_X = 1}. $]

#exercise[1.25][Supongamos que $T$ es un o.l de un e.n $X$ a un e.n $Y$ tal que ${T(x_n)}$ 
es acotada para toda sucesión ${x_n} subset X$ tal que $norm(x_n) -> 0$. ¿Es $T$ necesariamente continua?.]

Si

#exercise[1.26][Sea $T$ un o.l acotado inyectivo de un e.n $X$ a un e.n $Y$. Muestra que $T$ es una isometria sobre $Y$ 
ssi $T(B_X) = B_Y$ ssi $T(S_X) = S_Y$ ssi $T((B_X)^circle) = (B_Y)^circle$, 
donde $(B_X)^circle$ es la bola unitaria abierta en $X$.]

#proof[Primero notemos que por hmogeneidad se cumple que $T(B_X) = B_Y$ ssi $T(S_X) = S_Y$ ssi $T((B_X)^circle) = (B_Y)^circle$.]

#exercise[1.27][Sean $X, Y$ espacios de Banach y $T in cal(B)(X, Y)$. Si existe $delta > 0$ tal que $norm(T(x))>= delta norm(x)$
para todo $x in X$ entonces $T(X)$ es cerrado en $Y$. Más aún, $T$ es un isomofirsmo de $X$ en $Y$.]

#proof[
  Sea ${T(x_n)}$ una sucesión en $T(X) $ tal que $T(x_n) -> y $ en $ Y$. Basta con demostrar que ${x_n}$ es una sucesión de Cauchy en $X$
  pues entonces tendriamos que $x_n -> x $ en $ X$, pues $X$ es e.B, la continuidad de $T$ implica  que $T(x_n) -> T(x)$ y por la unicidad del limite
  obtenemos que $T(x) = y$, es decir $y in T(X)$. De lo anterior tendriamos que $T(X)$ es cerrado.

\
  Veamos entonces que ${x_n}$ es de Cauchy. 
  // Como $T in cal(B)(X, Y)$ entonces $T$ es continua, luego, existe $C>0$ tal que 
  // $norm(T(x)) <= C norm(x)$ para todo $x in X$. Dado $epsilon > 0 $
  Como ${T(x_n)}$ converge en $Y$ se sigue que es de Cauchy, por lo cual dado $epsilon>0$ existe $N in NN$ tal que si $n, m>= N$ se cumple que 
  $ epsilon delta > norm(T(x_n) - T(x_m)) = norm(T(x_n - x_m)) >= delta norm(x_n-x_m), $
  lo anterior implica que 
  $ epsilon > norm(x_n - x_m), $
  para $n, m >= N$, y por tanto ${x_n}$ es de  Cauchy como queremos.
]