--- URI Online Judge SQL
--- Copyright URI Online Judge
--- www.urionlinejudge.com.br
--- Problem 2616

CREATE TABLE customers (
  id numeric PRIMARY KEY,
  name varchar(50),
  street varchar(50),
  city varchar(50)
);


CREATE TABLE locations (
  id numeric PRIMARY KEY,
  locations_date date,
  id_customers numeric REFERENCES customers (id)
);

INSERT INTO customers (id, name, street, city)
VALUES
  (1,	'Giovanna Goncalves Oliveira',	'Rua Mato Grosso',	'Canoas'),
  (2,	'Kauã Azevedo Ribeiro',	'Travessa Ibiá',	'Uberlândia'),
  (3,	'Rebeca Barbosa Santos',	'Rua Observatório Meteorológico',	'Salvador'),
  (4,	'Sarah Carvalho Correia',	'Rua Antônio Carlos da Silva',	'Apucarana'),
  (5,	'João Almeida Lima',	'Rua Rio Taiuva',	'Ponta Grossa'),
  (6,	'Diogo Melo Dias',	'Rua Duzentos e Cinqüenta',	'Várzea Grande');
  

INSERT INTO locations (id , locations_date, id_customers)
VALUES
  (1,	'2016-09-01',	3),
  (2,	'2016-03-09',	1),
  (3,	'2016-11-02',	4),
  (4,	'2016-09-08',	2),
  (5,	'2016-09-07',	6),
  (6,	'2016-09-012',	4);
  

  /*  Execute this query to drop the tables */
  -- DROP TABLE locations, customers; --




select customers.id, customers.name from locations right join customers
on locations.id_customers = customers.id where id_customers is null;