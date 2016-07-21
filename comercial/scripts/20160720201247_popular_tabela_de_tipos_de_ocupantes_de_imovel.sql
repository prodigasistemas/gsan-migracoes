-- // popular tabela de tipos de ocupantes de imovel
-- Migration SQL that makes the change goes here.

insert into cadastro.imovel_tipo_ocupante values (nextval('cadastro.seq_imovel_tipo_ocupante'), 'Crianças'  , 1, now());
insert into cadastro.imovel_tipo_ocupante values (nextval('cadastro.seq_imovel_tipo_ocupante'), 'Adultos'   , 1, now());
insert into cadastro.imovel_tipo_ocupante values (nextval('cadastro.seq_imovel_tipo_ocupante'), 'Idosos'    , 1, now());
insert into cadastro.imovel_tipo_ocupante values (nextval('cadastro.seq_imovel_tipo_ocupante'), 'Empregados', 1, now());
insert into cadastro.imovel_tipo_ocupante values (nextval('cadastro.seq_imovel_tipo_ocupante'), 'Alunos'    , 1, now());
insert into cadastro.imovel_tipo_ocupante values (nextval('cadastro.seq_imovel_tipo_ocupante'), 'Cães'      , 1, now());
insert into cadastro.imovel_tipo_ocupante values (nextval('cadastro.seq_imovel_tipo_ocupante'), 'Outros'    , 1, now());


-- //@UNDO
-- SQL to undo the change goes here.

delete from cadastro.imovel_tipo_ocupante;

alter sequence cadastro.seq_imovel_tipo_ocupante restart with 1;