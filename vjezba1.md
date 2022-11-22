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
<, >, <=, >=, i <>. Pa da vidimo:
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