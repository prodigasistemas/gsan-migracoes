-- // add-indicador-uso-comando-cobranca
-- Migration SQL that makes the change goes here.

alter table cobranca.cobranca_acao_ativ_cmd add column cacm_icuso int2;
update cobranca.cobranca_acao_ativ_cmd set cacm_icuso = 1 where cacm_tmcomando >= '2018-01-01';
update cobranca.cobranca_acao_ativ_cmd set cacm_icuso = 2 where cacm_tmcomando < '2018-01-01';

-- //@UNDO
-- SQL to undo the change goes here.

alter table cobranca.cobranca_acao_ativ_cmd drop column cacm_icuso;