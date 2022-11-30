drop database if exists ljevaonica1;
create database ljevaonica1;
use ljevaonica1;

create table zaposlenik(
    sifra int not null primary key,
    ime varchar(50) not null,
    prezime varchar(50) not null,
    kbr int not null,
    ulica varchar(50) not null,
    grad varchar(50),
    opcina varchar(50),
    zupanija varchar(50) not null,
    drodjenja date,
    zaposlenod date,
    domena int(1),
    nadredjeni int,
    koeficijent decimal(3,2)
);

create table ulaz_izlaz(
    sifra int not null primary key auto_increment,
    zaposlenik int,
    vrijeme_ulaza datetime,
    vrijeme_izlaza datetime,
    sifra_izostanka int
);

create table proizvod(
    sifra int not null primary key auto_increment,
    brpozicije int not null,
    vljevanja int,
    vsacmarenja int,
    vbrusenja int,
    vpresanja int,
    vbojanja int
);

create table lot(
    sifra int not null primary key auto_increment,
    proizvod int not null,
    lotbr int not null,
    kolicina int not null,
    op1 boolean,
    op2 boolean,
    op3 boolean,
    op4 boolean,
    op5 boolean
);

create table kvota(
    sifra int not null primary key auto_increment,
    zaposlenik int,
    lotbr int,
    vrijeme_pocetka datetime,
    vrijeme_zavrsetka datetime,
    kolicina int,
    operacija int
);

create table ing(
    sifra  int not null primary key auto_increment,
    proizvod int
    
);

create table skladiste1(
    sifra int not null primary key auto_increment,
    zaposlenik int,
    cipeled date,
    odijelod date,
    sljedovanje date
);

create table alatnica(
    sifra int not null primary key auto_increment,
    imealata varchar(50),
    stanje boolean,
    invbroj int,
    zapsolenik int,
    nabavnibroj int,
    izdano datetime
);

create table potrosni_materijali(
    sifra int not null primary key auto_increment,
    zaposlenik int,
    nabavnibroj int,
    imematerijala varchar(50),
    kolicina int
);

create table nabava(
    sifra int not null primary key auto_increment,
    ime varchar(50),
    nabavnibroj int,
    imedobavljaca varchar(50),
    kolicinanaruceno int,
    datum datetime
);

alter table ulaz_izlaz add foreign key (zaposlenik) references zaposlenik(sifra);

alter table lot add foreign key (proizvod) references proizvod(sifra);

alter table kvota add foreign key (lotbr) references lot(sifra);
alter table kvota add foreign key (zaposlenik) references zaposlenik(sifra);

alter table ing add foreign key (proizvod) references proizvod(sifra);

alter table skladiste1 add foreign key (zaposlenik) references zaposlenik(sifra);
