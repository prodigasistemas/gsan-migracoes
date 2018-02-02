-- // migrar funcionalidade desfazer parcelamento para batch classificar pagamento
-- Migration SQL that makes the change goes here.
INSERT INTO batch.processo_funcionalidade VALUES (nextval('batch.seq_processo_funcionalidade'), 49, now(), 5, 0, 652, 1, null);
INSERT INTO cobranca.parametro VALUES (2, 'QUANTIDADE_DIAS_VENCIMENTO_GUIA', '7');


-- //@UNDO
-- SQL to undo the change goes here.
DELETE FROM batch.processo_funcionalidade WHERE proc_id = 49 and fncd_id = 652;
DELETE FROM cobranca.parametro where id = 2;