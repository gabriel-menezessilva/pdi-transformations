
alter table datawarehouse.dim_familia drop constraint if exists fk_dim_familia_Fato_estudante_1;
alter table datawarehouse.dim_familia
add constraint fk_dim_familia_fato_estudante_1
foreign key (id_fato_estudante) references datawarehouse.fato_estudante (id_fato_estudante);

alter table datawarehouse.dim_escola drop constraint if exists fk_dim_escola_fato_estudante_1;
alter table datawarehouse.dim_escola
add constraint fk_dim_escola_fato_estudante_1
foreign key (id_fato_estudante) references datawarehouse.fato_estudante (id_fato_estudante);

alter table datawarehouse.dim_endereco drop constraint if exists fk_dim_endereco_fato_estudante_1;
alter table datawarehouse.dim_endereco
add constraint fk_dim_endereco_fato_estudante_1
foreign key (id_fato_estudante) references datawarehouse.fato_estudante (id_fato_estudante);

alter table datawarehouse.dim_faixaetaria drop constraint if exists fk_dim_faixaetaria_fato_estudante_1;
alter table datawarehouse.dim_faixaetaria
add constraint fk_dim_faixaetaria_fato_estudante_1
foreign key (id_fato_estudante) references datawarehouse.fato_estudante (id_fato_estudante);

alter table datawarehouse.dim_nota drop constraint if exists fk_dim_nota_fato_estudante_1;
alter table datawarehouse.dim_nota
add constraint fk_dim_nota_fato_estudante_1
foreign key (id_fato_estudante) references datawarehouse.fato_estudante (id_fato_estudante);

alter table datawarehouse.dim_nota drop constraint if exists id_fato_estudante_fk;
alter table datawarehouse.dim_nota
add constraint fk_dim_nota_dim_tempo_1
foreign key (id_tempo) references datawarehouse.dim_tempo (id_tempo);

