-- // insert situacao atualizacao cadastral
-- Migration SQL that makes the change goes here.

INSERT INTO cadastro.situacao_atlz_cadastral VALUES (7, 'PRE APROVADO', 1, now());
INSERT INTO cadastro.situacao_atlz_cadastral VALUES (8, 'A REVISAR', 1, now());
INSERT INTO cadastro.situacao_atlz_cadastral VALUES (9, 'EM REVISAO', 1, now());

-- //@UNDO
-- SQL to undo the change goes here.

DELETE FROM cadastro.situacao_atlz_cadastral WHERE siac_id IN (7,8,9);
