


create table student(
    USN varchar(50) primary key,
    sname varchar(50),
    Adres varchar(50),
    phone bigint(10),
    Gender char(1)
);
create table semsec(
    ssid varchar(50) primary key,
    sem Numeric(10),
    sec char(1)
);
create table class(
    usn varchar(50),
    ssid varchar(50),
    primary key (ssid,usn),
    foreign key (usn) references student(USN),
    foreign key (ssid) references semsec(ssid)
);
create table subject(
    subcode varchar(50),
    title varchar(50),
    sem numeric(10),
    primary key (subcode),
    credit numeric(2)
)
create table IAMARKS(
    usn varchar(50),
    subcode varchar(50),
    ssid varchar(50),
    test1 numeric(3),
    test2 numeric(3),
    test3 numeric(3),
    finalIA numeric(3),
    primary key (usn,ssid,subcode),
    foreign key (usn) references student(usn),
    foreign key (subcode) references subject(subcode),
    foreign key (ssid) references semsec(ssid)
);
