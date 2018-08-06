-- // novo_layout_2a_conta
-- Migration SQL that makes the change goes here.


ALTER TABLE cadastro.sistema_parametros ADD COLUMN parm_descaplicativoatendimento character varying(15);
ALTER TABLE cadastro.sistema_parametros ADD COLUMN parm_foneaplicativoatendimento character varying(9);
ALTER TABLE faturamento.conta_mensagem ALTER COLUMN ctms_amreferenciafaturamento DROP NOT NULL;

INSERT INTO seguranca.parametro VALUES (nextval('seguranca.seq_seguranca_parametro'),'URL_SEGUNDA_VIA','http://api.cosanpa.pa.gov.br/contas_segunda_via/');

-- //@UNDO
-- SQL to undo the change goes here.

ALTER TABLE cadastro.sistema_parametros DROP COLUMN parm_descaplicativoatendimento;
ALTER TABLE cadastro.sistema_parametros DROP COLUMN parm_foneaplicativoatendimento;
DELETE FROM seguranca.parametro WHERE nome like 'URL_SEGUNDA_VIA';
