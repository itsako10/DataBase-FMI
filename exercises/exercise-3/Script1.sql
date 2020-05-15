SET SCHEMA DB2INST1;

--vqrno e
--select concat(concat(firstnme, ' '), lastname) as name, birthdate, hiredate
--from employee
--where week(birthdate) = week(hiredate);

--vqrno e (sa6toto kato gornoto e)
--select firstnme || ' ' || lastname as name, birthdate, hiredate
--from employee
--where week(birthdate) = week(hiredate);

--vqrno e
--select distinct t1.birthdate as birthdate, t1.name as name
--from (select birthdate, firstnme || ' ' || lastname as name
--from employee
--where (mod(year(birthdate), 400) = 0) or (mod(year(birthdate), 4) = 0 and mod(year(birthdate), 100) != 0)) as t1 , (select birthdate, firstnme || ' ' || lastname as name
--from employee
--where (mod(year(birthdate), 400) = 0) or (mod(year(birthdate), 4) = 0 and mod(year(birthdate), 100) != 0)) as t2
--where t1.name != t2.name and mod((year(t1.birthdate) - year(t2.birthdate)), 12) = 0;

--vqrno e
--select (e1.firstnme || ' ' || e1.lastname) || ', ' || (e2.firstnme || ' ' || e2.lastname) as "(name1, name2)"
--from employee as e1, employee as e2
--where ((e1.firstnme || ' ' || e1.lastname) != (e2.firstnme || ' ' || e2.lastname)) and (e1.birthdate = e2.birthdate) and ((e1.firstnme < e2.firstnme) or (e1.firstnme = e2.firstnme and e1.lastname < e2.lastname));





