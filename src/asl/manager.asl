// Agent sample_agent in project cleanersystem

/* Initial beliefs and rules */

// �rarendi hiedelmek, termek, id�j�r�s, koszosod�s m�rt�ke

//-----------------------------------------
// 1. nap
// t�z� naps�t�s
oravanIB28(8.25). //300
oravanIB28(10.25). //100

oravanIB27(10.25). //20
oravanIB27(14.25). //30

oravanIB26(12.25). //150

//sokemberfolyoson(?).

//mosdomarkoszos(?).
//-----------------------------------------



/* Initial goals */

!start.

/* Plans */

// h�romnegyed 8-kor kezdj�k a sz�m�t�st
+!start : true <- .print("J� napot."); !work(7.75).

+!work(T) : true <- !feladatotad(T); .print(T); .wait(2000); !work(T+0.5).

// feladatkioszt�s megval�s�t�sa, id� alapj�n, senzor jelz�se eset�n, megn�zve ki szabad ki elfoglalt

+!feladatotad(T) : true <- .print("EZT KELL MEGCSIN�LNI").






+tisztapadlo(place) : true <- +tisztapadlo(place). 
+ureskuka(place) : true <- +ureskuka(place).
+tisztamosdo : true <- +tisztamosdo.

//+?vanfeladat(feladat)


// senzor jelz�se
+uresfolyoso : true <- +uresfolyoso.
+telefolyoso : true <- -uresfolyoso.

