// Agent rendeles in project Etterem.mas2j

/* Initial beliefs and rules */

/* Initial goals */

!start.

/* Plans */

+!start : true <- .print("Rendeles jott, szolok az alapanyagrol anyagnak"); .send(anyag, tell, anyag1).

