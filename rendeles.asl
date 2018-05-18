// Agent rendeles in project tunyacsap.mas2j

/* Initial beliefs and rules */

/* Initial goals */

!start.

/* Plans */
+rendelo(R) : true <- +rendelo(R).
+rendeles(E) : true <- +rendeles(E).
+!start : true <- getRendeles; ?rendelo(R); ?rendeles(E); .send(anyag, tell, rendeles(R,E));
	.print("A(z) ",R,". vendeg ",E,"-t rendelt, szoltam rola anyagnak").

