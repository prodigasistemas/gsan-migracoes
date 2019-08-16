-- // insert_situacao_atualizacao_cadastral_atualizado_loja
-- Migration SQL that makes the change goes here.
INSERT INTO cadastro.situacao_atlz_cadastral VALUES (13, 'ATUALIZADO LOJA', 1, now());


-- //@UNDO
-- SQL to undo the change goes here.
DELETE FROM cadastro.situacao_atlz_cadastral WHERE siac_id = 13;

