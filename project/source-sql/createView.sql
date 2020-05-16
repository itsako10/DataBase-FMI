set schema fn45219;

create view v_riders_results
as
select firstname || ' ' || lastname as name, FIScode, nation, gender, place, country, resort, discipline, date
from Rider join Compete on FIScode = skierFIScode
join Competition on competition_number = number;

select * from v_riders_results;


set schema fn45219;

create view v_all_winners
as
select *
from v_riders_results
where place = 1;

select * from v_all_winners;



select * from rider;