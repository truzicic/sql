drop database if exists vjezba1;
create database vjezba1;
use vjezba1;

create table zupanija(
    sifra int not null primary key auto_increment,
    naziv varchar(50),
    zupan int,
    povrsina decimal(50,2),
    brstanovnika int
);

create table opcina(
    sifra int not null primary key auto_increment,
    zupanija int,
    naziv varchar(50)
   );

create table mjesto(
    sifra int not null primary key auto_increment,
    opcina int,
    naziv varchar(50)
);

create table zupan(
    sifra int not null primary key auto_increment,
    ime varchar(50),
    prezime varchar(50)
);

alter table zupanija add foreign key (zupan) references zupan(sifra);

alter table opcina add foreign key (zupanija) references zupanija(sifra);

alter table mjesto add foreign key (opcina) references opcina(sifra);

insert into zupan(ime,prezime) values ('Pero','Peric');
insert into zupan(ime,prezime) values ('Marko','Maric');
insert into zupan(ime,prezime) values ('Ivo','Ivic');
insert into zupan(ime,prezime) values ('Spuzva','Bob');
insert into zupan(ime,prezime) values ('Spiro','Spula');

insert into zupanija(naziv,zupan,povrsina,brstanovnika) values ('Oslaka',1,23456.45,234000);
insert into zupanija(naziv,zupan,povrsina,brstanovnika) values ('Jamajica',2,23987.34,187000);
insert into zupanija(naziv,zupan,povrsina,brstanovnika) values ('Zelenland',3,134987.00,34000);
insert into zupanija(naziv,zupan,povrsina,brstanovnika) values ('Babua Nova Korea',4,1287435.45,1234000);
insert into zupanija(naziv,zupan,povrsina,brstanovnika) values ('Pogbala Crnovlasi',5,856324.23,987000);

insert into opcina(zupanija,naziv) values (1,'Kotjo');
insert into opcina(zupanija,naziv) values (1,'MAGAsima');
insert into opcina(zupanija,naziv) values (1,'Slavabaki');
insert into opcina(zupanija,naziv) values (1,'Komsuza');

insert into opcina(zupanija,naziv) values (2,'Abajtju');
insert into opcina(zupanija,naziv) values (2,'Heklerimog');
insert into opcina(zupanija,naziv) values (2,'Blenetan');
insert into opcina(zupanija,naziv) values (2,'Oskokos');

insert into opcina(zupanija,naziv) values (3,'Rotled');
insert into opcina(zupanija,naziv) values (3,'Gelbmed');
insert into opcina(zupanija,naziv) values (3,'Gerufed');
insert into opcina(zupanija,naziv) values (3,'Blauei');

insert into opcina(zupanija,naziv) values (4,'Orikori');
insert into opcina(zupanija,naziv) values (4,'Alibali');
insert into opcina(zupanija,naziv) values (4,'Vishibasi');
insert into opcina(zupanija,naziv) values (4,'Rusipusi');

insert into opcina(zupanija,naziv) values (5,'Baleland');
insert into opcina(zupanija,naziv) values (5,'Ronaldam');
insert into opcina(zupanija,naziv) values (5,'Lukalug');
insert into opcina(zupanija,naziv) values (5,'Pelegrino');

insert into mjesto (opcina,naziv) values (1,'Stormfury Wharf');
insert into mjesto (opcina,naziv) values (1,'Cudfail Port');
insert into mjesto (opcina,naziv) values (1,'Driftwood Piers');

insert into mjesto (opcina,naziv) values (2,'Misty River Grange');
insert into mjesto (opcina,naziv) values (2,'Broken Arrow Gardens');
insert into mjesto (opcina,naziv) values (2,'Grand Mountain Ranch');

insert into mjesto (opcina,naziv) values (3,'Nuniollar');
insert into mjesto (opcina,naziv) values (3,'Breennosam');
insert into mjesto (opcina,naziv) values (3,'Reellion');

insert into mjesto (opcina,naziv) values (4,'Jyndunyrth');
insert into mjesto (opcina,naziv) values (4,'Bulbydyg');
insert into mjesto (opcina,naziv) values (4,'Taras');

insert into mjesto (opcina,naziv) values (5,'Persica');
insert into mjesto (opcina,naziv) values (5,'Clivia');
insert into mjesto (opcina,naziv) values (5,'Gallia');

insert into mjesto (opcina,naziv) values (5,'Locuststump');
insert into mjesto (opcina,naziv) values (5,'Larchbeard');
insert into mjesto (opcina,naziv) values (5,'Cedarblade');

insert into mjesto (opcina,naziv) values (6,'Devils Playground Tombs');
insert into mjesto (opcina,naziv) values (6,'White Beach Cemetery');
insert into mjesto (opcina,naziv) values (6,'Shadow Necropolis');

insert into mjesto (opcina,naziv) values (7,'Alzekh');
insert into mjesto (opcina,naziv) values (7,'Elixi');
insert into mjesto (opcina,naziv) values (7,'Dhirnimvra');

insert into mjesto (opcina,naziv) values (8,'Forebane Cave');
insert into mjesto (opcina,naziv) values (8,'The Dusk Covert');
insert into mjesto (opcina,naziv) values (8,'The Talon Base');

insert into mjesto (opcina,naziv) values (9,'Camp Company');
insert into mjesto (opcina,naziv) values (9,'Camp Woodpecker');
insert into mjesto (opcina,naziv) values (9,'Camp Alpine');

insert into mjesto (opcina,naziv) values (10,'Gravelberry Path');
insert into mjesto (opcina,naziv) values (10,'Wickpon Notch');
insert into mjesto (opcina,naziv) values (10,'Cornbalt Pass');

insert into mjesto (opcina,naziv) values (11,'Westview Side');
insert into mjesto (opcina,naziv) values (11,'Fountainvale Place');
insert into mjesto (opcina,naziv) values (11,'McLachlan Side');

insert into mjesto (opcina,naziv) values (12,'Dreampass Site');
insert into mjesto (opcina,naziv) values (12,'Gloom Harbor');
insert into mjesto (opcina,naziv) values (12,'Writhing Frontier');

insert into mjesto (opcina,naziv) values (13,'The Hot Reef');
insert into mjesto (opcina,naziv) values (13,'Coatiburg Key');
insert into mjesto (opcina,naziv) values (13,'Rimpids Haven');

insert into mjesto (opcina,naziv) values (14,'Nonine');
insert into mjesto (opcina,naziv) values (14,'Graudriara');
insert into mjesto (opcina,naziv) values (14,'Esopiams');

insert into mjesto (opcina,naziv) values (15,'Veneration Square');
insert into mjesto (opcina,naziv) values (15,'Honor Plaza');
insert into mjesto (opcina,naziv) values (15,'Oracle Square');

insert into mjesto (opcina,naziv) values (16,'Quarters of the Scarlet Orc');
insert into mjesto (opcina,naziv) values (16,'Cells of the Ancient Phoenix');
insert into mjesto (opcina,naziv) values (16,'The Serene Delves');

insert into mjesto (opcina,naziv) values (17,'Leicaster Lagoon');
insert into mjesto (opcina,naziv) values (17,'New Cove');
insert into mjesto (opcina,naziv) values (17,'Bosware Depths');

insert into mjesto (opcina,naziv) values (18,'The Matron');
insert into mjesto (opcina,naziv) values (18,'Battlestar Fortress');
insert into mjesto (opcina,naziv) values (18,'The Lament');

insert into mjesto (opcina,naziv) values (19,'Setting Sun Gardens');
insert into mjesto (opcina,naziv) values (19,'Tumbleweed Grange');
insert into mjesto (opcina,naziv) values (19,'Whisperwind Farm');

insert into mjesto (opcina,naziv) values (20,'Otterstall Hills');
insert into mjesto (opcina,naziv) values (20,'The Ice-crowned Hill');
insert into mjesto (opcina,naziv) values (20,'The Gray Heights');











