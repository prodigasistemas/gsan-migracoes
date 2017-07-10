-- // Criar data para inicio de cancelamento de parcelamentos
-- Migration SQL that makes the change goes here.
INSERT INTO cobranca.parametro(id, nome, valor) VALUES (nextval('cobranca.seq_cobranca_parametro'), 'DATA_INICIO_PARCELAMENTO_GSAN', '01/01/2010');


-- //@UNDO
-- SQL to undo the change goes here.
DELETE FROM cobranca.parametro WHERE id = 1;

