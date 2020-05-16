set schema fn45219;

insert into ski
values (1010, 'Atomic', 165, 68, 13);

insert into ski
values (1011, 'Atomic', 153, 68, 12);

insert into ski
values (1012, 'Atomic', 159, 68, 12);

insert into ski
values (2010, 'Head', 160, 69, 14);

insert into ski
values (2011, 'Head', 155, 68, 13);

insert into ski
values (3010, 'Rossignol', 171, 69, 14);

insert into ski
values (3011, 'Rossignol', 164, 68, 13);

select * from ski;

insert into Rider
values (10, 'Marcel', 'Hirscher', 'M', 'Austria', '1989-03-02', 1010);

insert into Rider
values (11, 'Manuel', 'Feller', 'M', 'Austria', '1992-10-13', 1012);

insert into Rider
values (12, 'Alexis', 'Pinturault', 'M', 'France', '1991-03-20', 2010);

insert into Rider
values (20, 'Mikaela', 'shiffrin', 'F', 'USA', '1995-03-13', 1011);

insert into Rider
values (21, 'Petra', 'Vlhova', 'F', 'Slovakia', '1995-06-13', 3011);

insert into Rider
values (22, 'Lindsey', 'Vonn', 'F', 'USA', '1984-10-18', 2011);

select * from Rider;	



insert into GeneralSponsor
values ('Red Bull', 'Austria', 1987);

insert into GeneralSponsor
values ('Monster Energy', 'USA', 2002);

insert into GeneralSponsor
values ('Audi', 'Germany', 1969);

select * from GeneralSponsor;

insert into Competition
values (106610, 'Austria', 'Kitzbuehel', 'Slalom', '2019-01-25', 'Red Bull');

insert into Competition
values (106611, 'Austria', 'Schladming', 'Slalom', '2019-01-29', 'Monster Energy');

insert into Competition
values (106621, 'France', 'Courchevel', 'Giant Slalom', '2018-12-21', 'Audi');

insert into Competition
values (106630, 'Switzerland', 'St. Moritz', 'Super G', '2018-12-08', 'Red Bull');

select * from Competition;

-----------------------
insert into Compete
values (10, 106610, 1);

insert into Compete
values (11, 106610, 3);

insert into Compete
values (12, 106610, 2);
-----------------------
insert into Compete
values (10, 106611, 1);

insert into Compete
values (11, 106611, 2);

insert into Compete
values (12, 106611, 3);
-----------------------
insert into Compete
values (20, 106621, 1);

insert into Compete
values (21, 106621, 2);

insert into Compete
values (22, 106621, 3);
-----------------------
insert into Compete
values (20, 106630, 2);

insert into Compete
values (21, 106630, 1);

insert into Compete
values (22, 106630, 3);

select * from Compete;

select firstname || ' ' || lastname, country, resort, discipline, place
from Rider join Compete on FIScode = skierFIScode
join Competition on number = competition_number
order by number, place;