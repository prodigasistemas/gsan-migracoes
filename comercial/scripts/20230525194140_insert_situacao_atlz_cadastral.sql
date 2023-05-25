-- // insert situacao atlz cadastral
-- Migration SQL that makes the change goes here.

insert into cadastro.situacao_atlz_cadastral values (16, 'ENCERRADO POR PRAZO', 1, now());

-- //@UNDO
-- SQL to undo the change goes here.

delete from cadastro.situacao_atlz_cadastral where siac_id = 16;


