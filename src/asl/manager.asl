// Agent sample_agent in project cleanersystem

/* Initial beliefs and rules */

// órarendi hiedelmek, termek, idõjárás, koszosodás mértéke

//-----------------------------------------
// 1. nap
// tûzõ napsütés
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

// háromnegyed 8-kor kezdjük a számítást
+!start : true <- .print("Jó napot."); !work(7.75).

+!work(T) : true <- !feladatotad(T); .print(T); .wait(2000); !work(T+0.5).

// feladatkiosztás megvalósítása, idõ alapján, senzor jelzése esetén, megnézve ki szabad ki elfoglalt

+!feladatotad(T) : true <- .print("EZT KELL MEGCSINÁLNI").






+tisztapadlo(place) : true <- +tisztapadlo(place). 
+ureskuka(place) : true <- +ureskuka(place).
+tisztamosdo : true <- +tisztamosdo.

//+?vanfeladat(feladat)


// senzor jelzése
+uresfolyoso : true <- +uresfolyoso.
+telefolyoso : true <- -uresfolyoso.

