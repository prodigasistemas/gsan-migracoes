-- // insert situacao atualizacao cadastral concluido anormalidade
-- Migration SQL that makes the change goes here.

-- INSERT INTO cadastro.situacao_atlz_cadastral VALUES (14, 'CONCL ANORMALIDADE', 1, now());

-- //@UNDO
-- SQL to undo the change goes here.

DELETE FROM cadastro.situacao_atlz_cadastral WHERE siac_id = 14;


