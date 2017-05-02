cleanersystem

Ezek kerültek eddig megvalósításra:

Sensor:
Manager kérésére adott idõpillanatban elmondja neki, sokan vagy kevesen vannak-e a folyosón. (Rögzített scenariokban írtuk le, mikor vannak sokan a folyosón.)

Cleaner:
5 van belõlük a rendszerünkben. A Manager random választ az éppen nem dolgozó ágensek közül, amikor ki akar osztani nekik egy feladatot.
Kérésre fel tudnak mosni egy adott helyszínt, ki tudják üríteni egy adott hely kukáit, vagy ki tudják takarítani a mosdókat.
Random értékkel van szimulálva, valóban koszosnak találja-e a helyszínt, amennyiben nem, szól a Manager-nek, hogy tiszta.
Ha koszosnak találta, elvégzi a munkát, és jelzi a Manager-nek, hogy készen van.

Manager:
Rögzített scenariok alapján vannak megadva 3 különbözõ napra, melyik teremben, hány órakor, hány diáknak van elõadása.
Fél órás idõközönként oszt ki feladatot, értelem szerûen olyan terembe nem küld takarítót, ahol éppen elõadás, vagy konferencia zajlik!
Számon tartja az éppen nem dolgozó ágenseket is.
7:45-tõl 15:45-tig tart egy munkanap.
Mosdót takarítani minden páros óra 45-kor küld takarítót.
A kezdeti és késõbbi hiedelmei alapján számon tartja, hány diák volt a termekben az utolsó felmosás/kukaürítés óta, ha az általa meghatározott mértéket meghaladja (most úgy állítottam be, hogy 200 felett mosson fel, 300 felett ürítsen kukát), és szabad a terem, kiosztja a megfelelõ feladatot valakinek.
Ha fél óra múlva konferencia lesz a teremben, mindenképpen odaküld egy takarítót, hogy felmosson.
A folyosót felmosatni küld takarítót minden nap legelején, illetve ha a szenzortól azt az információt kapja, hogy nincsenek sokan a folyosón. (variálhatjuk még, hogy minek a függvényében küldjön takarítót felmosni)

