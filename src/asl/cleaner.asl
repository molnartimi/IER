// Agent cleaner in project cleanersystem

/* Initial beliefs and rules */

boss(manager).

/* Initial goals */

!start.

/* Plans */
//+!start : true <- .print("Meg�rkeztem!"); +login(self); .send(manager,tell,login).
+!start : true <- .print("hello world."); .broadcast(tell,takarits).

+takarits[source(A)] : A==manager <- .print(A," mondja, takar�tsak").
+takarits[source(A)] : not boss(A) <- .print("H�, ",A,", te nekem ne dirig�lj!").

+mossfel : login(self) <- .print("Fel kell mosnom, r��rek, felmosok."); !felmos.

+!felmos : true <- .print("Felmos�s k�sz"); .send(manager, tell, tisztaterem).

+menjhaza: true <- .print("De j�, hazamegyek."); .send(manager,tell,bye).