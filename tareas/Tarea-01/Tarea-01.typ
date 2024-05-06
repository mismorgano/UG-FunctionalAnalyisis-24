#import "../../config.typ": config, exercise, proof

#show: doc => config([Tarea 1], doc)
#let cls(S) = $overline(#S)$

#exercise[1.2][
Sea $X$ un espacio lineal normado. Supongamos que para $x, y in X$ tenemos que 
$norm(x+y) = norm(x) + norm(y)$. Muestra que $norm(alpha x + beta y) = alpha norm(x) + beta norm(y)$ para 
todo $alpha, beta >= 0$.]

*Demostración:* 
Sean $alpha, beta >= 0$, sin perdida de generailad supongamos que $alpha>= beta$, así 
$alpha - beta >=0$. Notemos que 
$ alpha x + beta y = alpha x + alpha y - alpha y + beta y = alpha(x+y) - (alpha - beta) y, $
por lo cual 
$ norm(alpha x + beta y) &=  norm(alpha(x+y) - (alpha - beta) y) \ 
                          &>= abs(alpha)norm(x+y) - abs(alpha-beta)norm(y) \
                          &= alpha norm(x+y) - (alpha -beta)norm(y) \
                          &= alpha (norm(x) + norm(y)) - (alpha -beta)norm(y)\
                          &= alpha norm(x) + beta norm(y). $
Por otro lado sabemos que 
$ norm(alpha x + beta y) <= norm(alpha x) + norm( beta y) = abs(alpha) norm(x) + abs(beta) norm(y) = alpha norm(x) + beta norm(y), $
pues $alpha, beta >=0$. De lo anterior obtenemos lo deseado.
// Notemos que $alpha x, beta y in X$, luego por hipotesis se cumple que 
// $ norm(alpha x + beta y) &= norm(alpha x) + norm(beta y) = abs(alpha)norm(x) + abs(beta)norm(y)\ 
//                          &= alpha norm(x) + beta norm(y), $
// pues $alpha, beta >= 0$.

#h(1fr) $square$

#exercise[1.3][Muestra que $overline("span")(L) = overline("span"(L))$ y $overline("conv")(M) = overline("conv"(M))$]

*Demostración:*
Primero mostraremos que la cerradura de un subespacio (lineal) es un subespacio lineal.
Supongamos $S$ es un subespacio lineal, sean $x, y in cls(S)$, entonces existen sucesiones ${x_n}, {y_n} subset S$ tales 
que $ lim_(n -> infinity) x_n = x, quad lim_(n -> infinity) y_n = y, $
dado que $S$ es lineal tenemos que $x_n + y_n in S$ para todo $n in NN$ y además 
$ lim_(n -> infinity) (x_n + y_n) = lim_(n -> infinity) x_n + lim_(n -> infinity) y_n = x +y, $
por lo cual $x+y in cls(S)$.

De manera similar, dado $alpha in bb(K)$ tenemos que $alpha x_n in S$ para todo $n in NN$ y como $ lim_(n -> inf) alpha x_n = alpha x, $
entonces $alpha x in cls(S)$. Por lo anterior obtenemos que $cls(S)$ es un subespacio lineal.

Regresando con la demostración, 
notemos que $overline("span"(L))$ es un subespacio cerrado que contiene a $L$, luego $ cls("span")(L) subset cls("span"(L)) $, más aún
tenemos que $cls("span")(L)$ es cerrado, pues es intersección de cerrados, que contiene a $L$ por lo cual $cls("span"(L)) subset cls("span")(L)$


#h(1fr) $square$


#exercise[1.4][Muestra que $C$ es un conjunto convexo es un espacio vectorial si y solo si 
$sum lambda_i x_i in C$ siempre que $x_1, dots, x_n in C$ y $lambda_1, dots, lambda_n >= 0$ cumplen $sum lambda_i = 1$.]

#proof[Supongamos primero que $C$ es un conjunto convexo en un e.v, procedamos por inducción sobre $n$.
Para $n=2$, el resltado se sigue por la definición de convexidad. Supongamos ahora que el resultado es valido para $n=k$ y 
veamos que se cumple para $n=k+1$ . 
Sean $x_1, dots, x_(k+1) in C$ y $lambda_1, dots, lambda_(k+1) >= 0$. Si $sum_(i=1)^(k) lambda_i = 0$ entonces $lambda_i = 0$ para $i=1, dots, k$ 
y $lambda_(k+1)=1$ luego 
$ sum_(i=1)^(k+1) lambda_i x_i = x_(k+1) $
el cual esta en $C$.
Ahora, si $sum_(i=1)^(k) lambda_i >0$ tenemos que 
$ sum_(i=1)^(k+1) lambda_i x_i &= (sum_(i=1)^(k) lambda_i x_i) + lambda_(k+1) x_(k+1) \
                               &= sum_(i=1)^(k) lambda_i (sum_(i=1)^(k) lambda_i/(sum_(i=1)^(k) lambda_i) x_i) + lambda_(k+1) x_(k+1), $
                               notemos que  $lambda_i/(sum_(i=1)^(k) lambda_i) >= 0$ pue $lambda_i>=0$ y además $sum_(i=1)^(k) lambda_i/(sum_(i=1)^(k) = 1$, luego, 
por hipotesis de inducción se cumple que $sum_(i=1)^(k) lambda_i/(sum_(i=1)^(k) lambda_i) x_i in C$. 
Dado que $(sum_(i=1)^(k) lambda_i) + lambda_(k+1) =1$ y $C$ es convexo tenemos que 
$ sum_(i=1)^(k) lambda_i (sum_(i=1)^(k) lambda_i/(sum_(i=1)^(k) lambda_i) x_i) + lambda_(k+1) x_(k+1) in C, $
es decir, 
$ sum_(i=1)^(k+1) lambda_i x_i in C, $
como queremos.
Por el principio de inducción se cumple el resultado.

Supongamos ahora que $sum lambda_i x_i in C$ siempre que $x_1, dots, x_n in C$ y $lambda_1, dots, lambda_n >= 0$ cumplen $sum lambda_i = 1$ 
Dados $x, y in C$ consideramos $lambda_1 = t$ y $lambda_2 = 1-t$, con $t in [0, 1]$ en lo anterior, que es justamente la definición de que $C$ sea convexo.]


#exercise[1.5][Sean $A$ y $B$ dos conjuntos convexos es un espacio normado $X$. 
Muestra que $"conv"(A union B) = {lambda x + (1-lambda) y: x in A, y in B, lambda in [0, 1]}$.]

*Demostración:*
Sea $ C={lambda x + (1-lambda) y: x in A, y in B, lambda in [0, 1]}. $
Primero veamos que $C$ es convexo, sea $x, y in C$, entonces existen $a_1, a_2 in A$, $b_1, b_2 in B$ y $t_1, t_2 in [0, 1]$ tales que 
$ x = a_1 t_1 + (1-t_1) b_1, quad y = a_2 t_2 + (1-t_2)b_2. $
Dado $t in [0,1]$ se cumple que 
$ t x  + (1-t)y &= t(a_1 t_1 + (1-t_1) b_1) + (1-t)(a_2 t_2 + (1-t_2)b_2) \
               &= t t_1 a_1  + t (1-t_1) b_1  + (1-t)t_2 a_2  + (1-t)(1-t_2)b_2\
               &= t t_1 a_1 + (1-t)t_2 a_2 + t (1-t_1) b_1 + (1-t)(1-t_2)b_2, $
veamos que $ t t_1 a_1 + (1-t)t_2 a_2 = (t t_1 + (1-t)t_2 ) ( (t t_1)/(t t_1 + (1-t)t_2 ) a_1 + ((1-t)t_2)/(t t_1 + (1-t)t_2 ) a_2 ) $
notemos que $t t_1 + $
#h(1fr) $square.filled$

#exercise[1.8][Sea $1 <= p <= q <= infinity$. Muestra que $norm(x)_(l_q) <= norm(x)_(l_p)$ para $x in l_p$ y 
$norm(f)_(L_p) <= norm(f)_(L_q)$ para $f in L_q[0, 1]$.]

#exercise[1.9][Sea $f in L_(p_0)[0, 1]$ para algún $p_0>1$. Muestra que $lim$]

#proof[]