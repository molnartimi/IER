// Agent cleaner in project cleanersystem

/* Initial beliefs and rules */

// scenario szerint mikor mégsem koszos a terem

/* Initial goals */

/* Plans */

// koszosodás mértékét random számokkal szimuláljuk

// mosson fel
+mossfel(place) : true <- .print("Fel kell mosnom, ráérek, megnézem, tényleg kell-e."); .random(N); !felmos(place,N).
+!felmos(place,N) : N>=0.3 <- .print(place," koszos volt, felmostam."); .send(manager,tell,tisztapadlo(place)).
+!felmos(place,N) : N<0.3 <- .print(place," nem volt koszos."); .send(manager,tell,tisztapadlo(place)).

// takarítsa ki a mosdót
+tisztitsmosdot : true <- .print("Ki kell tisztítanom a mosdót, ráérek, megnézem, tényleg kell-e."); .random(N); !mosdotpucol(N).
+!mosdotpucol(N) : N>=0.5 <- .print("Mosdó koszos volt, kitakarítottam."); .send(manager,tell,tisztamosdo).
+!mosdotpucol(N) : N<0.5 <- .print("Mosdó nem volt koszos."); .send(manager,tell,tisztamosdo).

// ürítsen kukát
+uritskukat(place,N) : true <- .print("Ki kell vinnem a szemetet, ráérek, megnézem, tényleg kell-e."); .random(N); !viddki(place,N).
+!felmos(place,N) : N>=0.7 <- .print(place," kukája tele volt, kivittem."); .send(manager,tell,ureskuka(place)).
+!felmos(place,N) : N<0.7 <- .print(place," kukája nem volt tele."); .send(manager,tell,ureskuka(place)).
