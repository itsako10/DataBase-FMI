set schema fn45219;

create function rider_age(riderFIScode int)
returns int
return select year(current_date - birthdate)
	   from Rider
	   where FIScode = riderFIScode;
	   
select firstname || ' ' || lastname, gender, nation, fn45219.rider_age(FIScode) as age
from Rider;



create function general_sponsor(competition_number int)
returns varchar(30)
return select name as sponsor
	   from Competition join GeneralSponsor on sponsor_name = name
	   where number = competition_number;
	   
select number, country, resort, discipline, fn45219.general_sponsor(number) as sponsor
from Competition join GeneralSponsor on sponsor_name = name;

select fn45219.general_sponsor(106610) from sysibm.sysdummy1;
	   
	   
	   
	   
	   
	   
	   