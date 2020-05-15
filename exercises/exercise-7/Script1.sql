--set schema db2ships;

--vqrno e
--select name, launched
--from ships
--where name = class;

--set schema db2movies;

--vqrno e
--select *
--from movie
--where title like '%Star%' or title like '%Trek%'
--order by year desc, title;

--vqrno e
--select distinct title, year
--from movie join starsin on title = movietitle and year = movieyear
--join moviestar on starname = name
--where year(birthdate) >= 1970 and 
--     (year(birthdate) <= 1979 or 
--     (year(birthdate) = 1980 and (month(birthdate) < 7 or month(birthdate) = 7 and day(birthdate) = 1)));

set schema db2ships;

--vqrno e
--select ships.name
--from ships join outcomes on ships.name = ship
--join battles on battle = battles.name
--where battles.name is not null and (ships.name like 'C%' or ships.name like 'K%');

--vqrno e
--select distinct country
--from classes join ships on classes.class = ships.class
--join outcomes on ships.name = outcomes.ship
--where result = 'sunk';

--vqrno e
--select distinct country
--from classes c1 left join ships on c1.class = ships.class
--left join outcomes on ships.name = outcomes.ship
--where not exists(select country from classes c2 join ships on c2.class = ships.class
--join outcomes on ships.name = outcomes.ship where result = 'sunk' and c1.country = c2.country);

select * from outcomes where result = 'sunk';
