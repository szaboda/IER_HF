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
eddigiek([]).

/* Initial goals   */

!start.

/* Plans */

+anyagperc0 <- .print("Megvan a 0. anyag"); !kozos(0).
+anyagperc1 <- .print("Megvan az 1. anyag"); !kozos(1).
+anyagperc2 <- .print("Megvan a 2. anyag"); !kozos(2).
+anyagperc3 <- .print("Megvan a 3. anyag"); !kozos(3).
+anyagperc4 <- .print("Megvan a 4. anyag"); !kozos(4).
+anyagperc5 <- .print("Megvan az 5. anyag"); !kozos(5).
+anyagperc6 <- .print("Megvan a 6. anyag"); !kozos(6).
+anyagperc7 <- .print("Megvan a 7. anyag"); !kozos(7).
+anyagperc8 <- .print("Megvan a 8. anyag"); !kozos(8).
+anyagperc9 <- .print("Megvan a 9. anyag"); !kozos(9).
+anyagperc10 <- .print("Megvan a 10. anyag"); !kozos(10).
+anyagperc11 <- .print("Megvan a 11. anyag"); !kozos(11).
+anyagperc12 <- .print("Megvan a 12. anyag"); !kozos(12).
+!kozos(N) : true <- ?eddigiek(V); .concat(V,[N],V1); .sort(V1,V2); -eddigiek([V]); +eddigiek(V2); !test.
+!test : eddigiek(V) & hozzavalo(N, X) & .length(V,Vs) & .length(X,Xs) & Vs==Xs <- +ok.
+kesz(I,N) : true <- .wait({+ok}); !ell(I,N).
+!ell(I,N): eddigiek(V) & hozzavalo(N, X) & X==V <- .print("Elkeszitem az ",N,". etelt, es a kornyezetbe teszem"); putetel(N); .send(pincer,tell,vendeg(I,N)).








