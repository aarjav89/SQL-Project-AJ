create database sqlproject_aj;

use sqlproject_aj;

create table survey (
	State varchar(25),
	Capital varchar(25),
	Population  int,
	Area int,
	Famous_people varchar(25),
	Nick_name varchar(25),
	union_year smallint,
	State_Bird varchar(25)
);

insert into survey ( State, Capital, Population,Area,Famous_people,Nick_name, union_year, State_Bird)
values ( 
     'Alaska', 'Juneau', 479000, 586412, 'Joe Juneau','Last Frontier', 1959, 'Ptarmigan'	
);

insert into survey ( State, Capital, Population,Area,Famous_people,Nick_name, union_year, State_Bird)
values ( 
     'Arizona', 'Phoneix', 2963000, 113909, 'Geronimo','Grand Canyon State', 1912, 'Cactus Wren'	
);

insert into survey ( State, Capital, Population,Area,Famous_people,Nick_name, union_year, State_Bird)
values ( 
     'California', 'Sacramento', 25174000, 158693, 'Jack London','Golden State', 1850, 'Quail'	
);

insert into survey ( State, Capital, Population,Area,Famous_people,Nick_name, union_year, State_Bird)
values ( 
     'Florida', 'Tallahassee',  10680000,  58560, 'Joseph Stilwell',' Sunshine State', 1845, 'Mockingbird'	
);

insert into survey ( State, Capital, Population,Area,Famous_people,Nick_name, union_year, State_Bird)
values ( 
     'Hawaii', 'Honolulu',  1023000,  6450, 'Don Ho',' Aloha State',1959, 'Goose'	
);

insert into survey ( State, Capital, Population,Area,Famous_people,Nick_name, union_year, State_Bird)
values ( 
     'Idaho', 'Boise',  989000,  83557, 'Sacajawea',' Gem State',1890, 'Bluebird'	
);

insert into survey ( State, Capital, Population,Area,Famous_people,Nick_name, union_year, State_Bird)
values ( 
     'Kansas', 'Topeka',  2425000,  82264, 'Amelia Earhart',' Sunflower State',1861, 'Meadowlark'	
);

insert into survey ( State, Capital, Population,Area,Famous_people,Nick_name, union_year, State_Bird)
values ( 
     'Maine', 'Augusta',  1146000,  33215, 'Henry Longfellow',' Pine Tree State',1820, 'Chickadee'	
);

insert into survey ( State, Capital, Population,Area,Famous_people,Nick_name, union_year, State_Bird)
values ( 
     'Nebraska', 'Lincoln',  1597000,  77227, 'Fred Astaire',' Cornhusker State ',1867, 'Meadowlark'	
);

insert into survey ( State, Capital, Population,Area,Famous_people,Nick_name, union_year, State_Bird)
values ( 
     'New Jersey', 'Trenton',  7468000,  7836, 'Stephen Crane',' Garden State ',1787, 'Goldfinch'	
);

insert into survey ( State, Capital, Population,Area,Famous_people,Nick_name, union_year, State_Bird)
values ( 
     'New York', 'Albany',  17667000,  49576, ' Walt Whitman',' Empire State ',1788, 'Bluebird'	
);


insert into survey ( State, Capital, Population,Area,Famous_people,Nick_name, union_year, State_Bird)
values ( 
     'Ohio', 'Columbus',  1074600,  41222, ' Bob Hope',' Buckeye State ',1803, 'Cardinal'	
);

insert into survey ( State, Capital, Population,Area,Famous_people,Nick_name, union_year, State_Bird)
values ( 
     'Washington', 'Olympia',  4300000,  68192, ' Bing Crosby',' Evergreen State ',1889, 'Goldfinch'	
);

insert into survey ( State, Capital, Population,Area,Famous_people,Nick_name, union_year, State_Bird)
values ( 
     'Wisconsin', 'Madison',  4751000,  56154, ' Spencer Tracy',' Badger State ',1848, 'Robin'	
);

/* 2.	List the states that entered the union between 1850-1920, inclusive ( hint: type in 1850...1920). */

SELECT state FROM survey WHERE union_year>=1850 AND union_year<=1920;

/* 3.List the states with areas of less than 60,000 square miles that also have more than 10,000,000 people. */

SELECT state from survey where Area<=60000 AND Population>=10000000;

/* 4.	Now arrange the entire data base by population from smallest to largest – capture your results into a temporary table 
and copy the contents to a new table called Famous_sort */

CREATE VIEW famous_srt AS
 select * from survey ;
      

SELECT * from famous_srt 
 ORDER BY Population;















