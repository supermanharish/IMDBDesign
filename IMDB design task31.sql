create table movie (
movie_id integer(5) primary key,
movie_name varchar(45) not null,
director varchar(45) not null, 
release_year integer(5),
movie_length varchar(7)  
);

create table boxoffice (
boxoffice_id integer(5) primary key,
total_collection integer(10),
review varchar(45) , 
Rating float(6) 
);

create table moviecast(
cast_id integer(5) primary key,
hero_name varchar(45) not null,
heroine_name varchar(45) not null, 
music_director varchar(45) not null, 
);

insert into movie(movie_id,movie_name,director,release_year,movie_length)
values
(1,'Theri','Atlee',2016,2h 37m),
(2,'Mersal','Atlee',2017,2h 49m),
(3,'Bigil','Atlee',2019,2h 59m);

insert into boxoffice(boxoffice_id,total_collection,review,Rating)
values
(1,1500000000,'Good',7.7),
(2,2000000000,'Good',7.5),
(3,1400000000,'Good',6.7);

insert into moviecast(cast_id,hero_name,heroine_name,music_director,)
values
(1,'Vijay','Samantha','G.V.Prakash'),
(2,'Vijay','Samantha','A.R.Rahman'),
(3,'Vijay','Nayanthara','A.R.Rahman');


Select a.movie_name,b.total_collection,c.hero_name
from movie as a join boxoffice as b 
on a.movie_id=b.boxoffice_id
join moviecast as c on b.boxoffice_id=c.cast_id
where a.movie_name='Theri'