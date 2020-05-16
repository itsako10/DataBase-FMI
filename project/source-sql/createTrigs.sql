set schema fn45219;

create trigger trig_compete_place
before update of place on Compete
referencing new as n old as o
for each row
when (n.place < 0) set n.place  = o.place;

select firstname || ' ' || lastname, place
from Rider join Compete on FIScode = skierFIScode;

update Compete
set place = -10
where place = 1;

select firstname || ' ' || lastname, place
from Rider join Compete on FIScode = skierFIScode;



create trigger trig_insert_rider
after insert on Rider
referencing new as n
for each row
when (exists(select * from Rider where firstname = '' or lastname = ''))
delete from Rider
where firstname = '' or lastname = '';

select * from Rider;

insert into Rider
values (100, 'Chris', 'Benchetler', 'M', 'USA', '1986-11-13', 1010);

select * from Rider;

insert into Rider
values (200, '', '', 'M', 'USA', '1980-10-05', 2011);

select * from Rider;







