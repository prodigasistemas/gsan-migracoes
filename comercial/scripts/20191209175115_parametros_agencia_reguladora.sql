-- // parametros agencia reguladora
-- Migration SQL that makes the change goes here.

CREATE SEQUENCE faturamento.seq_faturamento_parametro INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 3 CACHE 1;
ALTER TABLE faturamento.seq_faturamento_parametro OWNER TO gsan_admin;
GRANT SELECT, UPDATE ON SEQUENCE faturamento.seq_faturamento_parametro TO gsan_admin;
GRANT SELECT, UPDATE ON SEQUENCE faturamento.seq_faturamento_parametro TO role_aplic;
GRANT SELECT ON SEQUENCE faturamento.seq_faturamento_parametro TO role_users;

INSERT INTO faturamento.parametro VALUES (nextval('faturamento.seq_faturamento_parametro'), 'AGENCIA_REGULADORA_NOME', 'AMAE');
INSERT INTO faturamento.parametro VALUES (nextval('faturamento.seq_faturamento_parametro'), 'AGENCIA_REGULADORA_ALIQUOTA', '2');
INSERT INTO faturamento.parametro VALUES (nextval('faturamento.seq_faturamento_parametro'), 'AGENCIA_REGULADORA_MUNICIPIO', '33');

-- //@UNDO
-- SQL to undo the change goes here.

DELETE FROM faturamento.parametro WHERE nome = 'AGENCIA_REGULADORA_NOME';
DELETE FROM faturamento.parametro WHERE nome = 'AGENCIA_REGULADORA_ALIQUOTA';
DELETE FROM faturamento.parametro WHERE nome = 'AGENCIA_REGULADORA_MUNICIPIO';
DROP SEQUENCE faturamento.seq_faturamento_parametro; 