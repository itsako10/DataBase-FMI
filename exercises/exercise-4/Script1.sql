set schema db2pc;


--vqrno e
--select (decimal(avg(speed), 5, 2)) as avrg_speed
--from pc;

--vqrno e
--select maker, avg(screen) as avrg_screen
--from product as t1, laptop as t2
--where t1.model = t2.model
--group by maker;

--vqrno e
--select avg(speed) as avg_speed
--from laptop
--where price > 1000;

--vqrno e
--select decimal(avg(price), 31, 2) as avg_price_of_A
--from product as t1, pc as t2
--where (t1.model = t2.model) and maker = 'A';

--vqrno e
--select avg(t1.price) as avg_price
--from ((select price
--       from product as t1, pc as t2
--       where t1.model = t2.model and maker = 'B') union all (select price
--                                                             from product as t1, laptop as t2
--                                                             where t1.model = t2.model and maker = 'B')) as t1;

--vqrno e
--select speed, avg(price) as avg_price
--from pc
--group by speed;

--da ima pone 3 proizvedeni pc-ta (mahame uslovieto modelite da sa razli4ni), vqrno e
--select maker, count(t2.model)
--from product as t1, pc as t2
--where t1.model = t2.model
--group by maker
--having count(t2.model) >= 3;





