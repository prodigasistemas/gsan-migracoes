-- // insert_imoveis_perfis.sql
-- Migration SQL that makes the change goes here.

insert into cadastro.imovel_perfil 
VALUES (11, 'BOLSA AGUA R1', 1, now(), 
2, 1, 1, 2, null, 2, 2, 1, 2);

insert into cadastro.imovel_perfil 
VALUES (12, 'BOLSA AGUA R2', 1, now(), 
2, 1, 1, 2, null, 2, 2, 1, 2);

-- //@UNDO
-- SQL to undo the change goes here.

delete from cadastro.imovel_perfil where iper_id in (11, 12);
