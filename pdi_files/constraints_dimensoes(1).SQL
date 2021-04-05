
alter table datawarehouse.dim_familia drop constraint if exists id_fato_estudante_fk;
alter table datawarehouse.dim_familia
add constraint id_fato_estudante_fk
foreign key (id_fato_estudante) references datawarehouse.fato_estudante (id_fato_estudante);

alter table datawarehouse.dim_escola drop constraint if exists id_fato_estudante_fk;
alter table datawarehouse.dim_escola
add constraint id_fato_estudante_fk
foreign key (id_fato_estudante) references datawarehouse.fato_estudante (id_fato_estudante);

alter table datawarehouse.dim_endereco drop constraint if exists id_fato_estudante_fk;
alter table datawarehouse.dim_endereco
add constraint id_fato_estudante_fk
foreign key (id_fato_estudante) references datawarehouse.fato_estudante (id_fato_estudante);

alter table datawarehouse.dim_idade drop constraint if exists id_fato_estudante_fk;
alter table datawarehouse.dim_idade
add constraint id_fato_estudante_fk
foreign key (id_fato_estudante) references datawarehouse.fato_estudante (id_fato_estudante);

alter table datawarehouse.dim_port drop constraint if exists id_fato_estudante_fk;
alter table datawarehouse.dim_port
add constraint id_fato_estudante_fk
foreign key (id_fato_estudante) references datawarehouse.fato_estudante (id_fato_estudante);

alter table datawarehouse.dim_mat drop constraint if exists id_fato_estudante_fk;
alter table datawarehouse.dim_mat
add constraint id_fato_estudante_fk
foreign key (id_fato_estudante) references datawarehouse.fato_estudante (id_fato_estudante);