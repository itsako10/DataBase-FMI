--set schema db2movies;

--vqrno e
--select title, year
--from movie
--where (length > 120 and year < 1990) or length is NULL;

--vqrno e
--select name
--from moviestar, (select max(birthdate) as birthdate
--				 from moviestar
--				 where gender = 'M') as t
--where moviestar.birthdate = t.birthdate;

set schema db2ships;

select country, count(outcomes.ship)
from classes left join ships
on classes.class = ships.class
left join outcomes
on ships.name = outcomes.ship
where outcomes.result = 'sunk' or ships.name is null or outcomes.battle is null
group by country;
							  

