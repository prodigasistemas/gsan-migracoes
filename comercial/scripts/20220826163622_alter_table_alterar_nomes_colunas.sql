-- // alter table alterar nomes colunas
-- Migration SQL that makes the change goes here.

ALTER TABLE arrecadacao.arrecador_contrato_convenio RENAME TO arrecadador_contrato_convenio;

ALTER SEQUENCE arrecadacao.seq_parametros_convenio RENAME TO seq_arrecadador_contrato_convenio;

ALTER TABLE arrecadacao.arrecadador_contrato_convenio
RENAME COLUMN prcv_id TO arcc_id;

ALTER TABLE arrecadacao.arrecadador_contrato_convenio
RENAME COLUMN prcv_nnconvenio TO arcc_nnconvenio;

ALTER TABLE arrecadacao.arrecadador_contrato_convenio
RENAME COLUMN prcv_nncarteira TO arcc_nncarteira;

ALTER TABLE arrecadacao.arrecadador_contrato_convenio
RENAME COLUMN prcv_nnvariacaocarteira TO arcc_nnvariacaocarteira;

ALTER TABLE arrecadacao.arrecadador_contrato_convenio
RENAME COLUMN prcv_cdtipotitulo TO arcc_cdtipotitulo;



-- //@UNDO
-- SQL to undo the change goes here.

ALTER TABLE arrecadacao.arrecadador_contrato_convenio RENAME TO arrecador_contrato_convenio;

ALTER SEQUENCE arrecadacao.seq_arrecadador_contrato_convenio RENAME TO seq_parametros_convenio;

ALTER TABLE arrecadacao.arrecadador_contrato_convenio
RENAME COLUMN arcc__nnconvenio TO prcv_nnconvenio;

ALTER TABLE arrecadacao.arrecadador_contrato_convenio
RENAME COLUMN arcc_nncarteira TO prcv_nncarteira;

ALTER TABLE arrecadacao.arrecadador_contrato_convenio
RENAME COLUMN arcc_nnvariacaocarteira TO prcv_nnvariacaocarteira;

ALTER TABLE arrecadacao.arrecadador_contrato_convenio
RENAME COLUMN arcc_cdtipotitulo TO prcv_cdtipotitulo;
