// Agent sensor in project cleanersystem

/* Initial beliefs and rules */
// Kezd�id�pont itt is 7:45
// kezdeti be�ll�t�sok, mikor vannak kevesen/sokan a folyos�n
ures(9.75).
ures(11.75).
ures(13.75).


/* Initial goals */

!start.

/* Plans */

+!start : true <- !count(7.75).

+!count(A) : ures(A) <- .send(manager,tell,uresfolyoso); !count(A+0.5).

+!count(A) : not ures(A) <- .send(manager,tell,telefolyoso); !count(A+0.5).
