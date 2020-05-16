set schema fn45219;

create table Rider
(
	FIScode int not null,
	firstname varchar(30),
	lastname varchar(30),
	gender char(1),
	nation varchar(30),
	birthdate date,
	ski_serial_number int,
	primary key (FIScode),
	foreign key (ski_serial_number) references Ski(serial_number)
);

create table Ski
(
	serial_number int not null,
	brand varchar(30),
	length int,
	width int,
	radius int,
	primary key (serial_number)
);

create table Competition
(
	number int not null,
	country varchar(30),
	resort varchar(30),
	discipline varchar(30),
	date date,
	sponsor_name varchar(30),
	primary key (number),
	foreign key (sponsor_name) references GeneralSponsor (name)
);

create table GeneralSponsor
(
	name varchar(30) not null,
	country_of_origin varchar(30),
	introduced int,
	primary key (name)
);

create table Compete
(
	skierFIScode int not null,
	competition_number int not null,
	place int,
	primary key (skierFIScode, competition_number),
	foreign key (skierFIScode) references Rider (FIScode),
	foreign key (competition_number) references Competition(number)
);