// Agent pincer in project Etterem.mas2j

/* Initial beliefs and rules */

/* Initial goals */

!start.

/* Plans */

+vendeg(I,N) : true <- +kivinni(I,N).
+etelperc <- .wait({+kivinni(_,_)}); ?kivinni(A,B); .print("Megvan a(z) ",B,". etel, odaadom a(z) ",A,". vendegnek").
+turelem(I,N) : true <- .print("Szolok a(z) ",I,". vendegnek, hogy kicsit varnia kell a(z) ",N,". etelre").
