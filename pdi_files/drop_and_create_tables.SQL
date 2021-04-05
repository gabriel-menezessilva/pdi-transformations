drop table if exists datawarehouse.dim_idade;
drop table if exists datawarehouse.dim_endereco;
drop table if exists datawarehouse.dim_escola;
drop table if exists datawarehouse.dim_familia;
drop table if exists datawarehouse.dim_port;
drop table if exists datawarehouse.dim_mat;
drop table if exists datawarehouse.fato_estudante;
drop schema if exists datawarehouse;

create schema datawarehouse;

CREATE TABLE datawarehouse.fato_estudante
(id_fato_estudante DOUBLE precision constraint pk_fato primary key 
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
, health BIGINT
);

CREATE TABLE datawarehouse.dim_familia
(
  id_fato_estudante DOUBLE PRECISION
, famsize VARCHAR(3)
, Pstatus VARCHAR(1)
, Medu BIGINT
, Fedu BIGINT
, Mjob VARCHAR(8)
, Fjob VARCHAR(8)
, guardian VARCHAR(6)
, famsup VARCHAR(3)
, famrel BIGINT
); 

CREATE TABLE datawarehouse.dim_escola
(
  id_fato_estudante DOUBLE PRECISION
, school VARCHAR(2)
, reason VARCHAR(10)
, traveltime BIGINT
, studytime BIGINT
, failures BIGINT
, schoolsup VARCHAR(3)
, paid VARCHAR(3)
, activities VARCHAR(3)
);

CREATE TABLE datawarehouse.dim_idade
(
  id_idade DOUBLE PRECISION
, id_fato_estudante DOUBLE PRECISION
, age BIGINT
);

CREATE TABLE datawarehouse.dim_endereco
(
  id_fato_estudante DOUBLE PRECISION
, address VARCHAR(1)
, id_endereco DOUBLE PRECISION
);

CREATE TABLE datawarehouse.dim_mat
(
  id_fato_estudante DOUBLE PRECISION
, absences BIGINT
, G1 BIGINT
, G2 BIGINT
, G3 BIGINT
);

CREATE TABLE datawarehouse.dim_port
(
  id_fato_estudante DOUBLE PRECISION
, absences BIGINT
, G1 BIGINT
, G2 BIGINT
, G3 BIGINT
);

