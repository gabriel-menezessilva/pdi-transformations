drop table if exists datawarehouse.dim_faixaetaria;
drop table if exists datawarehouse.dim_endereco;
drop table if exists datawarehouse.dim_escola;
drop table if exists datawarehouse.dim_familia;
drop table if exists datawarehouse.dim_nota;
drop table if exists datawarehouse.dim_tempo;
drop table if exists datawarehouse.fato_estudante;
drop schema if exists datawarehouse;

create schema datawarehouse;

CREATE TABLE datawarehouse.fato_estudante
(id_fato_estudante int8 NOT NULL
, sex VARCHAR(1)
, age BIGINT
, address VARCHAR(1)
, nursery BOOLEAN
, internet BOOLEAN
, higher BOOLEAN
, romantic BOOLEAN
, freetime BIGINT
, goout BIGINT
, Dalc BIGINT
, Walc BIGINT
, health BIGINT,
PRIMARY KEY (id_fato_estudante));

CREATE TABLE datawarehouse.dim_familia
(
  id_familia int8 NOT null,
  id_fato_estudante int8 NOT NULL
, famsize VARCHAR(3)
, Pstatus VARCHAR(1)
, Medu BIGINT
, Fedu BIGINT
, Mjob VARCHAR(8)
, Fjob VARCHAR(8)
, guardian VARCHAR(6)
, famsup VARCHAR(3)
, famrel BIGINT,
PRIMARY KEY (id_familia)
); 

CREATE TABLE datawarehouse.dim_escola
(
  id_escola int8 NOT NULL,
  id_fato_estudante int8
, school VARCHAR(2)
, reason VARCHAR(10)
, traveltime BIGINT
, studytime BIGINT
, failures BIGINT
, schoolsup VARCHAR(3)
, paid VARCHAR(3)
, activities VARCHAR(3),
PRIMARY KEY (id_escola)
);

CREATE TABLE datawarehouse.dim_faixaetaria
(
  id_faixaetaria int8 NOT NULL  
, id_fato_estudante int8 NOT NULL
, age BIGINT,
PRIMARY KEY (id_faixaetaria)
);

CREATE TABLE datawarehouse.dim_endereco
(
  id_endereco  int8 NOT NULL,
  id_fato_estudante int8 NOT NULL, 
  address VARCHAR(1),  
  PRIMARY KEY(id_endereco)
);

CREATE TABLE datawarehouse.dim_nota
(
  id_nota int8 NOT NULL
, id_fato_estudante int8 NOT NULL
, id_tempo int8 NOT NULL
, absences BIGINT
, nota BIGINT
, disciplina VARCHAR(1),
 PRIMARY KEY(id_nota)
);

CREATE TABLE datawarehouse.dim_tempo
(
  id_tempo int8 NOT NULL
, trimestre smallint,
 PRIMARY KEY(id_tempo)
);

