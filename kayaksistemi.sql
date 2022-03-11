create table kisibilgileri (
    tc varchar(11) not null,
    ad varchar(20) not null,
    soyad varchar(20) not null,
	primary key (tc)
);
    
create table adresbilgileri (
    adresid int not null,
    tc  varchar(11) not null,
    ulke    varchar(12) not null,
    il      varchar(12) not null,
    ilce    varchar(12) not null,
    primary key (adresid),
    foreign key (tc) references kisibilgileri(tc)
);

create table ekipmanbilgileri (
    ekipmanid int not null,
    ekipmangunlukucret int not null,
    ekipmanturu varchar(20) not null,
    ekipmanadi varchar(20) not null,
	primary key (ekipmanid)
);


create table kartbilgileri(
    kartid int not null,
    tc varchar(11) not null,
    yilbilgileri date,
    primary key (kartid),
    foreign key (tc) references kisibilgileri(tc)
);

create table pistbilgileri (
    pistid int not null,
    pistsezonlukucret int not null,
    pistseviyesi varchar(20) not null,
    pistadi varchar(20) not null,
	primary key (pistid)
);

create table teleferikbilgileri (
    teleferikid int not null,
    pistid int not null,
    teleferikadi varchar(20) not null,
    teleferikturu varchar(20) not null,
    teleferikkapasitesi int not null,
    teleferikaktiflik varchar(20) not null,
	primary key (teleferikid),
    foreign key (pistid) references pistbilgileri(pistid)
);

create table kisiekipmaniliskisi (
    tc varchar(11) not null,
    ekipmanid int not null,
    kiralamatarihi date not null,
	primary key (tc,ekipmanid),
    foreign key (tc) references kisibilgileri(tc),
    foreign key (ekipmanid) references ekipmanbilgileri (ekipmanid)       
    );

create table pistkartiliskisi (
    pistid int not null,
    kartid int not null,
    primary key (pistid,kartid),
    foreign key (pistid) references pistbilgileri (pistid),
    foreign key (kartid) references kartbilgileri (kartid)    
);

