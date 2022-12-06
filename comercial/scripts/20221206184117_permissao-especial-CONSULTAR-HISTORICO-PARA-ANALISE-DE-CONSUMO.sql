-- // permissao-especial-CONSULTAR-HISTORICO-PARA-ANALISE-DE-CONSUMO
-- Migration SQL that makes the change goes here.

INSERT INTO seguranca.permissao_especial(pmep_id, pmep_dspermissaoespecial, pmep_icuso, pmep_tmultimaalteracao, oper_id)
VALUES (nextval('seguranca.seq_permissao_especial'),'CONSULTAR HISTORICO PARA ANALISE DE CONSUMO',1,now(),800);

-- //@UNDO
-- SQL to undo the change goes here.

DELETE from seguranca.permissao_especial where pmep_id = 207; 
