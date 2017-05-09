-- // inserir envio email arquivo contas cobranca empresa
-- Migration SQL that makes the change goes here.

INSERT INTO cadastro.envio_email(enem_id, enem_dsemailremetente, enem_dsemailreceptor, enem_dstitulomensagem, enem_dscorpomensagem, fncd_id, enem_tmultimaalteracao)
VALUES (54,'gsan@cosanpa.pa.gov.br','cobranca@cosanpa.pa.gov.br','Arquivo de Contas em Cobranca por Empresa','Arquivo de Contas em Cobranca por Empresa.',1158,now());

-- //@UNDO
-- SQL to undo the change goes here.

DELETE FROM cadastro.envio_email WHERE enem_id=54;
