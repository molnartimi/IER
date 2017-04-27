// Agent sensor in project cleanersystem

/* Initial beliefs and rules */
// Kezdõidõpont itt is 7:45
// kezdeti beállítások, mikor vannak kevesen/sokan a folyosón
ures(9.75).
ures(11.75).
ures(13.75).


/* Initial goals */

!start.

/* Plans */

+!start : true <- !count(7.75).

+!count(A) : ures(A) <- .send(manager,tell,uresfolyoso); !count(A+0.5).

+!count(A) : not ures(A) <- .send(manager,tell,telefolyoso); !count(A+0.5).
