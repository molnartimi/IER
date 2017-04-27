// Agent sample_agent in project cleanersystem

/* Initial beliefs and rules */



/* Initial goals */

!start.

/* Plans */

+!start : true <- .print("Jó napot.").
+login[source(A)] : true <- .print(A," megérkezett."); +free(A); !feladatotad(A).
+!feladatotad(A) : not tiszta(terem) & not valakimos(terem) <- .print(A," menj felmosni"); .send(A,tell,mossfel); +valakimos(terem).
+!feladatotad(A) : tiszta(terem) | valakimos(terem) <- .print(A," hazamehetsz"); .send(A,tell,menjhaza).
+tisztaterem[source(A)] : true <- +tiszta(terem); !feladatotad(A).
+bye[source(A)] : true <- -free(A); .print(A," hazament.").
