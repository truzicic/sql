## vjezba1

### SELECT naredba
```
SELECT * FROM zupanija;
```
Ova naredba izlistava sve redove i stupce iz tablice zupanija.

Ukoliko zelimo izlistati samo odredjene stupce, umjesto znaka *
stavljamo imena stupaca koji nas zanimaju: 

```
SELECT naziv,brstanovnika FROM zupanija;
```

Mozemo i filtrirati rezultate po odredjenim kriterijima,
u ovom slucaju to je broj zupanije - 1, upotrebom WHERE
kljucne rijeci:
```
SELECT naziv FROM opcina WHERE zupanija = 1;
```
I jos jedan primjer:
```
SELECT * FROM mjesto WHERE opcina = 5;
```

Naravno, mozemo koristiti i druge znakove osim za usporedbu osim =.
<, >, <=, >=, i <>. 
U iducim primjerima cu uglavnom koristiti tablicu zupanija:
```
sifra|naziv            |zupan|povrsina  |brstanovnika|
-----+-----------------+-----+----------+------------+
    1|Oslaka           |    1|  23456.45|      234000|
    2|Jamajica         |    2|  23987.34|      187000|
    3|Zelenland        |    3| 134987.00|       34000|
    4|Babua Nova Korea |    4|1287435.45|     1234000|
    5|Pogbala Crnovlasi|    5| 856324.23|      987000|
```
Pa da vidimo:
```
SELECT * FROM zupanija WHERE brstanovnika > 500000;
```
Dakle, prethodni primjer nam je izlistao samo zupanije koje imaju
vise od 500000 stanovnika.

Iduci primjer izlistava zupanije sa svim pripadajucim stupcima kojima
je sifra zupana (vanjski kljuc) 3 ili vise:
```
SELECT * from zupanija WHERE zupan >=3;
```

WHERE Mozemo koristiti i s OR ili AND rijecima. Recimo da zelimo izlistati
zupanije kojima je povrsina veca do 20000 kvadratnih kilometara i manja od 1000000:
```
SELECT naziv,povrsina,brstanovnika FROM zupanija WHERE povrsina > 20000 AND brstanovnika < 200000;
```
Vracena nam je tablica:
```
naziv    |povrsina |brstanovnika|
---------+---------+------------+
Jamajica | 23987.34|      187000|
Zelenland|134987.00|       34000|
```
Ovakve tablice mozemo direktno kopirati u md file iz DBeavera, ali ih moramo tretirati kao kod,
znaci omedjiti trostrukim backtick znakovima.

Ako zelimo primjerice ispisati zupanije s povrsinom manjom od 25000 kvadrata ili brojem stanovnika
vecim od 1000000:
```
SELECT naziv,povrsina,brstanovnika FROM zupanija WHERE povrsina < 25000 OR brstanovnika > 1000000;
```
Vracena nam je tablica:
```
naziv           |povrsina  |brstanovnika|
----------------+----------+------------+
Oslaka          |  23456.45|      234000|
Jamajica        |  23987.34|      187000|
Babua Nova Korea|1287435.45|     1234000|
```
Uvjeta moze biti i vise kada koristimo WHERE, AND i OR, ne samo dva kao u prethodnom primjeru.
Prethodnu pretragu cemo prosiriti tako da nam izlista i zupanije s manje od 50000 stanovnika.
```
SELECT naziv,povrsina,brstanovnika FROM zupanija WHERE povrsina < 25000 OR brstanovnika > 1000000
	OR brstanovnika < 50000; 
```
Vracena nam je tablica:
```
naziv           |povrsina  |brstanovnika|
----------------+----------+------------+
Oslaka          |  23456.45|      234000|
Jamajica        |  23987.34|      187000|
Zelenland       | 134987.00|       34000|
Babua Nova Korea|1287435.45|     1234000|
```
Jedna zanimljiva mogucnost prilikom pretrazivanja tablica je i mogucnost
kombiniranja proizvoljnih stringova s rezultatom pretrage. Primjer:
```
SELECT CONCAT(naziv,' ima povrsinu od ',povrsina,' kvadratnih kilometara.') AS POVRSINA
	FROM zupanija
```
Rezultat je:
```
POVRSINA                                                          
------------------------------------------------------------------
Oslaka ima povrsinu od 23456.45 kvadratnih kilometara.            
Jamajica ima povrsinu od 23987.34 kvadratnih kilometara.          
Zelenland ima povrsinu od 134987.00 kvadratnih kilometara.        
Babua Nova Korea ima povrsinu od 1287435.45 kvadratnih kilometara.
Pogbala Crnovlasi ima povrsinu od 856324.23 kvadratnih kilometara.
```

Podatci koje izvlacimo iz tablice se mogu i sortirati, pa da vidimo par jednostavnih primjera:
```
SELECT naziv,brstanovnika FROM zupanija ORDER BY brstanovnika ASC;
```
Tablica:
```
naziv            |brstanovnika|
-----------------+------------+
Zelenland        |       34000|
Jamajica         |      187000|
Oslaka           |      234000|
Pogbala Crnovlasi|      987000|
Babua Nova Korea |     1234000|
```
Naredba je tako postavljena da izvlacimo vrijednosti za naziv i brstanovnika iz zupanija,
s ORDER BY "zahtjevamo" sortiranje po stupcu brstanovnika, a s ASC definiramo poredak od manjeg prema vecem.
Kada bi zamjenili zadnju kljucnu rijec ASC s DESC, dobili bi smo poredak od veceg prema manjem:
```
SELECT naziv,brstanovnika FROM zupanija ORDER BY brstanovnika DESC;
```
Tablica:
```
naziv            |brstanovnika|
-----------------+------------+
Babua Nova Korea |     1234000|
Pogbala Crnovlasi|      987000|
Oslaka           |      234000|
Jamajica         |      187000|
Zelenland        |       34000|
```
Naravno, sortirati mozemo i abecedno:
```
SELECT * FROM zupanija ORDER BY naziv ASC;
```
Tablica:
```
sifra|naziv            |zupan|povrsina  |brstanovnika|
-----+-----------------+-----+----------+------------+
    4|Babua Nova Korea |    4|1287435.45|     1234000|
    2|Jamajica         |    2|  23987.34|      187000|
    1|Oslaka           |    1|  23456.45|      234000|
    5|Pogbala Crnovlasi|    5| 856324.23|      987000|
    3|Zelenland        |    3| 134987.00|       34000|
```