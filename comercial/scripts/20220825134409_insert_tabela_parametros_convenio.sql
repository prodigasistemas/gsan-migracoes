-- // insert tabela parametros convenio
-- Migration SQL that makes the change goes here.

INSERT INTO arrecadacao.parametros_convenio
(prcv_id, prcv_nnconvenio, prcv_nncarteira, prcv_nnvariacaocarteira, prcv_cdtipotitulo)
VALUES(nextval('arrecadacao.seq_parametros_convenio'), 3128557, 17, 35, 2);

INSERT INTO arrecadacao.parametros_convenio
(prcv_id, prcv_nnconvenio, prcv_nncarteira, prcv_nnvariacaocarteira, prcv_cdtipotitulo)
VALUES(nextval('arrecadacao.seq_parametros_convenio'), 3469663, 17, 35, 2);

INSERT INTO arrecadacao.parametros_convenio
(prcv_id, prcv_nnconvenio, prcv_nncarteira, prcv_nnvariacaocarteira, prcv_cdtipotitulo)
VALUES(nextval('arrecadacao.seq_parametros_convenio'), 2860143, 17, 19, 2);

-- //@UNDO
-- SQL to undo the change goes here.

DELETE FROM arrecadacao.parametros_convenio WHERE prcv_id in (1, 2, 3);
