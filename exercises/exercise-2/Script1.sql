--set schema db2movies;

--vqrno e
--select moviestar.name
--from moviestar, (select name
--				 from movieexec
--				 where networth > 10000000) as t
--where gender = 'F' and moviestar.name = t.name;

--tova sa6to e vqrno, reshava sashtata zada4a kato gornata, no re6enieto e malko po-gotino
--select moviestar.name
--from moviestar
--where moviestar.name in (select name
--				 from movieexec
--				 where networth > 10000000) and gender = 'F';

--vqrno e
--select moviestar.name
--from moviestar
--where moviestar.name not in (select name
--							 from movieexec);

--vqrno e
--select title
--from movie
--where movie.length > (select length
--					  from movie
--					  where title = 'Gone With the Wind');
--

--vqrno e
--select t.name, movie.title
--from (select name, cert#
--	  from movieexec
--	  where networth > (select networth
--	  					from movieexec
--	  					where name = 'Mery Griffin')) as t, movie
--where producerc# = t.cert#;

--select title, length, name
--from studio, (select title, length 
--			  from movie, studio
--			  where studioname = name);

--vqrno e
--select title, length, name as studioname
--from movie as m, studio
--where length >= all(select length
--				    from movie
--				    where studioname = m.studioname) and m.studioname = studio.name;

set schema db2pc;

--vqrno e
--select distinct maker
--from product
--where model in (select model
--				from pc
--				where speed >= 500);

--select * from product;




