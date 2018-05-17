// Agent etel in project Etterem.mas2j

/* Initial beliefs and rules */
//A szakacs is ismeri a recepteket, megnezi, jokat kapott-e
hozzavalo(0, [1, 5, 7]).
hozzavalo(1, [0, 2, 3, 9]).
hozzavalo(2, [4, 5, 8]).
hozzavalo(3, [0, 7, 8, 10]).
hozzavalo(4, [0, 1, 2, 9]).
hozzavalo(5, [3, 4, 7]).
hozzavalo(6, [2, 5, 6, 11]).
hozzavalo(7, [0, 10, 12]).
hozzavalo(8, [9, 10]).
hozzavalo(9, [1, 2, 8, 11, 12]).

/* Initial goals   */

!start.

/* Plans */
+anyagperc0 <- .print("Megvan a 0. anyag"); +hv(0).
+anyagperc1 <- .print("Megvan az 1. anyag"); +hv(1).
+anyagperc2 <- .print("Megvan a 2. anyag"); +hv(2).
+anyagperc3 <- .print("Megvan a 3. anyag"); +hv(3).
+anyagperc4 <- .print("Megvan a 4. anyag"); +hv(4).
+anyagperc5 <- .print("Megvan az 5. anyag"); +hv(5).
+anyagperc6 <- .print("Megvan a 6. anyag"); +hv(6).
+anyagperc7 <- .print("Megvan a 7. anyag"); +hv(7).
+anyagperc8 <- .print("Megvan a 8. anyag"); +hv(8).
+anyagperc9 <- .print("Megvan a 9. anyag"); +hv(9).
+anyagperc10 <- .print("Megvan a 10. anyag"); +hv(10).
+anyagperc11 <- .print("Megvan a 11. anyag"); +hv(11).
+anyagperc12 <- .print("Megvan a 12. anyag"); +hv(12).
+kesz(I,N) : true <- ?hozzavalo(N,X); !varakozas(X,0); .print("Elkeszitem az ",N,". etelt, es a kornyezetbe teszem"); 
	putetel(N); .send(pincer,tell,vendeg(I,N)).
+!varakozas(X,K) : .length(X,L) & L>K <- .nth(K,X,Y); .wait(hv(Y)); .print("Beleteszem a(z) ",Y,". hozzavalot"); 
	-hv(X[K]); !varakozas(X,K+1).
+!varakozas(_,_).


