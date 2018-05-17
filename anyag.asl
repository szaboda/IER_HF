// Agent anyag in project Etterem.mas2j

/* Initial beliefs and rules */

//Ismeri a recepteket: melyik etelhez milyen hozzavalok kellenek
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

/* Initial goals */

!start.

/* Plans */

+hianyzik0 <- +hianyzik(0).
+hianyzik1 <- +hianyzik(1).
+hianyzik2 <- +hianyzik(2).
+hianyzik3 <- +hianyzik(3).
+hianyzik4 <- +hianyzik(4).
+hianyzik5 <- +hianyzik(5).
+hianyzik6 <- +hianyzik(6).
+hianyzik7 <- +hianyzik(7).
+hianyzik8 <- +hianyzik(8).
+hianyzik9 <- +hianyzik(9).
+hianyzik7 <- +hianyzik(10).
+hianyzik8 <- +hianyzik(11).
+hianyzik9 <- +hianyzik(12).

+rendeles(I,N) : true <- +rendelo(I); +rendeles(N); .print("Megkeresem a hozzavalokat a(z) ",N,". etelhez"); ?hozzavalo(N, V); !anyagok(V, 0).
+!anyagok(V, N) : .length(V,L) & L>N <- ?hianyzik(Y); .nth(N,V,X); ?rendelo(I); ?rendeles(R);
		if(X==Y){.print("[Raktaros GUI] Elfogyott a(z) ",X,". hozzavalo, hozzal belole!"); .send(pincer, tell, turelem(I,R)); .wait(3000); -hianyzik(Y); +hianyzik(-1); !anyagok(V,N)} 
		else{.print("Kornyezetbe ",X,". hozzavalo"); putanyag(X); if(L>N+1){!anyagok(V,N+1)} else{.send(etel, tell, kesz(I,R))}}.
+!anyagok(_, _).


