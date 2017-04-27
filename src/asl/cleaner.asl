// Agent cleaner in project cleanersystem

/* Initial beliefs and rules */

// scenario szerint mikor m�gsem koszos a terem

/* Initial goals */

/* Plans */

// koszosod�s m�rt�k�t random sz�mokkal szimul�ljuk

// mosson fel
+mossfel(place) : true <- .print("Fel kell mosnom, r��rek, megn�zem, t�nyleg kell-e."); .random(N); !felmos(place,N).
+!felmos(place,N) : N>=0.3 <- .print(place," koszos volt, felmostam."); .send(manager,tell,tisztapadlo(place)).
+!felmos(place,N) : N<0.3 <- .print(place," nem volt koszos."); .send(manager,tell,tisztapadlo(place)).

// takar�tsa ki a mosd�t
+tisztitsmosdot : true <- .print("Ki kell tiszt�tanom a mosd�t, r��rek, megn�zem, t�nyleg kell-e."); .random(N); !mosdotpucol(N).
+!mosdotpucol(N) : N>=0.5 <- .print("Mosd� koszos volt, kitakar�tottam."); .send(manager,tell,tisztamosdo).
+!mosdotpucol(N) : N<0.5 <- .print("Mosd� nem volt koszos."); .send(manager,tell,tisztamosdo).

// �r�tsen kuk�t
+uritskukat(place,N) : true <- .print("Ki kell vinnem a szemetet, r��rek, megn�zem, t�nyleg kell-e."); .random(N); !viddki(place,N).
+!felmos(place,N) : N>=0.7 <- .print(place," kuk�ja tele volt, kivittem."); .send(manager,tell,ureskuka(place)).
+!felmos(place,N) : N<0.7 <- .print(place," kuk�ja nem volt tele."); .send(manager,tell,ureskuka(place)).
