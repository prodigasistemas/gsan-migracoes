-- // novas_colunas_ficha_compensacao
-- Migration SQL that makes the change goes here.

ALTER TABLE arrecadacao.ficha_compensacao
ADD COLUMN fico_tmhorarionotificacao timestamp without time zone;

ALTER TABLE arrecadacao.ficha_compensacao
ADD COLUMN fico_tmhorarioregistrado timestamp without time zone;

ALTER TABLE arrecadacao.ficha_compensacao
ADD COLUMN fico_tmhorariobaixado timestamp without time zone;

ALTER TABLE arrecadacao.ficha_compensacao
ADD COLUMN fico_tmhorarioliquidado timestamp without time zone;



COMMENT ON COLUMN arrecadacao.ficha_compensacao.fico_tmhorarionotificacao IS 'Horario da notificacao';
COMMENT ON COLUMN arrecadacao.ficha_compensacao.fico_tmhorarioregistrado IS 'Horario de Registro';
COMMENT ON COLUMN arrecadacao.ficha_compensacao.fico_tmhorariobaixado IS 'Horario da Baixa';
COMMENT ON COLUMN arrecadacao.ficha_compensacao.fico_tmhorarioliquidado IS 'Horario Liquidado';


-- //@UNDO
-- SQL to undo the change goes here.


