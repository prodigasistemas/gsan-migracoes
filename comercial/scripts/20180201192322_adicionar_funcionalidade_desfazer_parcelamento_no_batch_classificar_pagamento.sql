-- // adicionar funcionalidade desfazer parcelamento no batch classificar pagamento
-- Migration SQL that makes the change goes here.
INSERT INTO seguranca.funcionalidade VALUES (16044, 3, 'Desfazer Parcel por Entrada nao Paga sem ano mes faturamento', now(), 'Gsan/', 'sem url', 2, 'DEPAENSAMF',1,2,2,null,null);
INSERT INTO batch.processo_funcionalidade VALUES (nextval('batch.seq_processo_funcionalidade'), 49, now(), 5, 3, 16044, 1, null);
INSERT INTO cobranca.parametro VALUES (2, 'QUANTIDADE_DIAS_VENCIMENTO_GUIA', '7');


-- //@UNDO
-- SQL to undo the change goes here.
DELETE FROM batch.processo_funcionalidade WHERE proc_id = 49 and fncd_id = 16044;
DELETE FROM seguranca.funcionalidade WHERE fncd_id = 16044;
DELETE FROM cobranca.parametro where id = 2;