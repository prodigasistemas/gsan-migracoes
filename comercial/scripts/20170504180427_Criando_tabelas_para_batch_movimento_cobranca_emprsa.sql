-- // Criando tabelas para batch movimento cobranca emprsa
-- Migration SQL that makes the change goes here.


CREATE TABLE cobranca.negociacao_cobranca_empresa
(
  ncem_id integer NOT NULL, -- id da negociacao 
  parc_id integer, -- id do parcelamento
  cbdo_id integer, -- id do documento de cobranca
  gpag_id integer, -- id da guia de pagamento
  empr_id integer, -- id da empresa
  ncem_tmultimaalteracao timestamp without time zone NOT NULL DEFAULT now(),
  CONSTRAINT negociacao_pkey PRIMARY KEY (ncem_id),
  CONSTRAINT fk1_negociacao FOREIGN KEY (parc_id)
      REFERENCES cobranca.parcelamento (parc_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT,
  CONSTRAINT fk2_negociacao FOREIGN KEY (cbdo_id)
      REFERENCES cobranca.cobranca_documento (cbdo_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT,
  CONSTRAINT fk3_negociacao FOREIGN KEY (gpag_id)
      REFERENCES faturamento.guia_pagamento (gpag_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT,
  CONSTRAINT fk4_negociacao FOREIGN KEY (empr_id)
      REFERENCES cadastro.empresa (empr_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT
)
WITH (
  OIDS=FALSE
);
ALTER TABLE cobranca.negociacao_cobranca_empresa
  OWNER TO gsan_admin;
GRANT ALL ON TABLE cobranca.negociacao_cobranca_empresa TO gsan_admin;
GRANT SELECT, UPDATE, INSERT, DELETE ON TABLE cobranca.negociacao_cobranca_empresa TO role_aplic;
GRANT SELECT ON TABLE cobranca.negociacao_cobranca_empresa TO role_users;
GRANT SELECT, UPDATE, INSERT, DELETE ON TABLE cobranca.negociacao_cobranca_empresa TO gsan_operacional;
COMMENT ON COLUMN cobranca.negociacao_cobranca_empresa.parc_id IS 'id do parcelamento';
COMMENT ON COLUMN cobranca.negociacao_cobranca_empresa.cbdo_id IS 'id do documento de cobranca';
COMMENT ON COLUMN cobranca.negociacao_cobranca_empresa.gpag_id IS 'id da guia de pagamento';
COMMENT ON COLUMN cobranca.negociacao_cobranca_empresa.empr_id IS 'id da empresa';
COMMENT ON COLUMN batch.processo.proc_tmultimaalteracao IS 'timestamp da inclusao/ultima alteracao';


CREATE SEQUENCE cobranca.seq_negociacao_cobranca_empresa
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
ALTER TABLE cobranca.seq_negociacao_cobranca_empresa
  OWNER TO gsan_admin;
GRANT ALL ON TABLE cobranca.seq_negociacao_cobranca_empresa TO gsan_admin;
GRANT SELECT, UPDATE ON TABLE cobranca.seq_negociacao_cobranca_empresa TO role_aplic;



CREATE TABLE cobranca.neg_conta_cobranca_empresa
(
  ncce_id integer NOT NULL, -- id da conta negociada
  ncem_id integer, -- id da negociacao
  cnta_id integer, -- id da conta
  ncce_tmultimaalteracao timestamp without time zone NOT NULL DEFAULT now(),
  CONSTRAINT negociacao_conta_pkey PRIMARY KEY (ncce_id),
  CONSTRAINT fk1_negociacao_conta FOREIGN KEY (ncem_id)
      REFERENCES cobranca.negociacao_cobranca_empresa (ncem_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT,
  CONSTRAINT fk2_negociacao_conta FOREIGN KEY (cnta_id)
      REFERENCES faturamento.conta_geral (cnta_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT
)
WITH (
  OIDS=FALSE
);
ALTER TABLE cobranca.neg_conta_cobranca_empresa
  OWNER TO gsan_admin;
GRANT ALL ON TABLE cobranca.neg_conta_cobranca_empresa TO gsan_admin;
GRANT SELECT, UPDATE, INSERT, DELETE ON TABLE cobranca.neg_conta_cobranca_empresa TO role_aplic;
GRANT SELECT ON TABLE cobranca.neg_conta_cobranca_empresa TO role_users;
GRANT SELECT, UPDATE, INSERT, DELETE ON TABLE cobranca.neg_conta_cobranca_empresa TO gsan_operacional;
COMMENT ON COLUMN cobranca.neg_conta_cobranca_empresa.ncem_id IS 'id da negociacao';
COMMENT ON COLUMN cobranca.neg_conta_cobranca_empresa.cnta_id IS 'id da conta negociada';
COMMENT ON COLUMN batch.processo.proc_tmultimaalteracao IS 'timestamp da inclusao/ultima alteracao';


CREATE SEQUENCE cobranca.seq_neg_conta_cobranca_empresa
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
ALTER TABLE cobranca.seq_neg_conta_cobranca_empresa
  OWNER TO gsan_admin;
GRANT ALL ON TABLE cobranca.seq_neg_conta_cobranca_empresa TO gsan_admin;
GRANT SELECT, UPDATE ON TABLE cobranca.seq_neg_conta_cobranca_empresa TO role_aplic;


-- //@UNDO
-- SQL to undo the change goes here.

drop table cobranca.neg_conta_cobranca_empresa;
drop table cobranca.negociacao_cobranca_empresa;

drop sequence cobranca.seq_negociacao_cobranca_empresa;
drop sequence cobranca.seq_neg_conta_cobranca_empresa;

