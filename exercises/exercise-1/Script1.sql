--set schema db2movies;


-- SELECT m.NAME
-- FROM starsin s, moviestar m
-- WHERE MOVIETITLE = 'Terms of Endearment'
-- AND GENDER = 'M'
-- AND s.STARNAME = m.NAME

-- SELECT starname
-- FROM movie, starsin
-- WHERE studioname='MGM'
-- AND year=1995
-- AND movietitle=title

--SELECT DISTINCT e.name
--FROM studio s, movie m, movieexec e
--WHERE s.name=m.studioname
--AND m.studioname='MGM'
--AND m.producerc#=e.cert#

--SELECT m1.title
--FROM movie m1, movie m2, movie as m
--WHERE m2.title = 'Gone With the Wind'
--AND m1.length >= m2.length;

--SELECT m.title
--FROM movieexec as e1, movieexec as e2, movie as m
--WHERE e1.name = 'Mery Griffin'
--AND e2.networth > e1.networth
--AND e2.cert# = m.producerc#

set schema movies;

select *
from movie m1, movie m2 
where m2.title='Gone With the Wind' and m1.year<>m2.year and m1.title<>m2.title and m1.length > m2.length;