// Agent cleaner in project cleanersystem

/* Initial beliefs and rules */

boss(manager).

/* Initial goals */

!start.

/* Plans */
//+!start : true <- .print("Megérkeztem!"); +login(self); .send(manager,tell,login).
+!start : true <- .print("hello world."); .broadcast(tell,takarits).

+takarits[source(A)] : A==manager <- .print(A," mondja, takarítsak").
+takarits[source(A)] : not boss(A) <- .print("Hé, ",A,", te nekem ne dirigálj!").

+mossfel : login(self) <- .print("Fel kell mosnom, ráérek, felmosok."); !felmos.

+!felmos : true <- .print("Felmosás kész"); .send(manager, tell, tisztaterem).

+menjhaza: true <- .print("De jó, hazamegyek."); .send(manager,tell,bye).