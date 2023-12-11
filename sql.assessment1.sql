create database assessment;

use assessment;

create table city ( 
id int(10) not null auto_increment primary key,
city_name varchar(20),
lat int(10),
Longi int(10),
country_id int(10),
foreign key (country_id) references country(id)
);

insert into city ( city_name , lat , longi , country_id )
 values ( 'berlin' , 52 , 13 , 1 ),
		('belgrade' , 44 , 20 , 2 ),
        ( 'zagreb ' , 45 , 15 , 3 ),
        ( 'new york ' , 40 , -13 , 4 ),
        ('los angeles' , 24 , -118 , 5 ),
        ( 'warsaw' , 52 , 21 , 5 );
                                                          
                                                          
create table customer ( 
id int(10) not null auto_increment primary key ,
customer_name varchar (20) ,
city_id int(10) , 
customer_address varchar (20) , 
next_call_date date ,
ts_inserted date ,
foreign key (city_id) references city(id)
);

insert into customer ( customer_name , city_id , customer_address , next_call_date , ts_inserted )
values ( 'jewelry store' , 4 , 'long street 120 ' , '2020-01-21' , '2020-01-09' ),
	   ( 'bakery' , 1 , 'kurfistend 25' , '2020-02-21' , '2020-01-09' ) ,
       ( 'cafe' , 1 , 'tauentiz 44 ' , '2020-01-21' , '2020-01-10' ) ,
       ('restaurant' , 3 , 'ulica lipa 15 ' , '2020-01-21' , '2020-01-10' );

select * from customer;

create table country ( 
id int(20) not null auto_increment primary key , 
country_name varchar (20) ,
country_name_eng varchar (20) ,
country_code varchar (20)
);

insert into country ( country_name , country_name_eng, country_code )
values ('deustschland' , 'germany' , 'DEU' ),
       ( 'srbija' , 'serbia' , 'SRB' ),
       ('hrvatska' , 'croatia' , 'HRV' ), 
       ('usa' , 'usa' , 'USA' ),
       ('polska' , 'poland' , 'POL'),
       ('espana' , 'spain' , 'ESP' ),
       ('rossia' , 'russia' , 'RUS' );

select * from city,country,customer;
select* from customer;
select * from city;

select country.country_name_eng,city.city_name,customer.customer_name from country left join city on city.country_id = country.id left join customer on customer.city_id = city.id ;

select country.country_name_eng,city.city_name,customer.customer_name from country inner join  city on city.country_id = country.id left join customer on customer.city_id = city.id ;







