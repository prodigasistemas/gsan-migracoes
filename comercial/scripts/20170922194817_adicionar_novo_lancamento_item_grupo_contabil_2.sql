-- // adicionar novo lancamento item grupo contabil 2
-- Migration SQL that makes the change goes here.
INSERT INTO financeiro.lancamento_item VALUES 
(132, 'GRUPO CONTÁBIL 2', 'GRUPO2', 1, now());


-- //@UNDO
-- SQL to undo the change goes here.
DELETE FROM financeiro.lancamento_item WHERE lcit_id = 132;

