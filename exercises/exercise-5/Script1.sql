set schema db2movies;

--vqrno e (raboti, no maj moje i po-oprosteno da se napravi)
--select movieexec.name, movie.title
--from movieexec, movie, (select name, title
--						from movieexec, movie
--						where producerc# = cert# and movie.title = 'Star Wars') as t1
--where producerc# = cert# and movieexec.name = t1.name;

--vqrno e
--select distinct movieexec.name
--from movieexec, movie, starsin
--where starsin.movietitle = movie.title and starsin.movieyear = movie.year and movie. producerc# = movieexec.cert# and starsin.starname = 'Harrison Ford';

--vqrno e
--select studio.name, starsin.starname
--from studio, movie, starsin
--where studio.name = movie.studioname and movie.title = starsin.movietitle and movie.year = starsin.movieyear
--order by studio.name;

--vqrno e
--select distinct starsin.starname
--from movieexec, movie, starsin
--where movieexec.cert# = movie.producerc# and movie.title = starsin.movietitle and movie.year = starsin.movieyear and movieexec.networth >= all(select movieexec.networth from movieexec);

--vqrno e
--select moviestar.name
--from movie cross join starsin right join moviestar on starsin.starname = moviestar.name
--where title is NULL;

