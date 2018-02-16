-- // informacoes_cancelar_parcelamento
-- Migration SQL that makes the change goes here.

CREATE TABLE cobranca.parcel_motivo_cancelamento
(
  pmca_id integer NOT NULL,
  pmca_descricao character varying(30),
  pmca_icuso smallint,
  pmca_tmultimaalteracao timestamp without time zone NOT NULL DEFAULT now(),
  CONSTRAINT parcelamento_motivo_cancelamento_pkey PRIMARY KEY (pmca_id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE cobranca.parcel_motivo_cancelamento
  OWNER TO gsan_admin;
GRANT ALL ON TABLE cobranca.parcel_motivo_cancelamento TO gsan_admin;
GRANT ALL ON TABLE cobranca.parcel_motivo_cancelamento TO postgres WITH GRANT OPTION;
GRANT SELECT, UPDATE, INSERT, DELETE ON TABLE cobranca.parcel_motivo_cancelamento TO pg_aplic;
GRANT SELECT ON TABLE cobranca.parcel_motivo_cancelamento TO pg_users;
COMMENT ON COLUMN cobranca.parcel_motivo_cancelamento.pmca_id IS 'id do motivo de cancelamento do parcelamento';
COMMENT ON COLUMN cobranca.parcel_motivo_cancelamento.pmca_descricao IS 'descricao do motivo cancelamento do parcelamento';
COMMENT ON COLUMN cobranca.parcel_motivo_cancelamento.pmca_icuso IS 'indicador de uso (1-ativo 2-inativo)';
COMMENT ON COLUMN cobranca.parcel_motivo_cancelamento.pmca_tmultimaalteracao IS 'timestamp da inclusao/ultima alteracao';

CREATE SEQUENCE cobranca.seq_parcel_motivo_cancelamento
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
ALTER TABLE cobranca.seq_parcel_motivo_cancelamento
  OWNER TO gsan_admin;
GRANT SELECT, UPDATE ON SEQUENCE cobranca.seq_parcel_motivo_cancelamento TO gsan_admin;
GRANT SELECT, UPDATE ON SEQUENCE cobranca.seq_parcel_motivo_cancelamento TO pg_aplic;
GRANT SELECT ON SEQUENCE cobranca.seq_parcel_motivo_cancelamento TO pg_users;

ALTER TABLE cobranca.parcelamento ADD COLUMN parc_tmcancelamento timestamp without time zone;
ALTER TABLE cobranca.parcelamento ADD COLUMN usur_idcancelamento integer;
ALTER TABLE cobranca.parcelamento ADD COLUMN pmca_id integer;

ALTER TABLE cobranca.parcelamento ADD CONSTRAINT fk18_parcelamento FOREIGN KEY (usur_idcancelamento) REFERENCES seguranca.usuario (usur_id) MATCH SIMPLE ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE cobranca.parcelamento ADD CONSTRAINT fk19_parcelamento FOREIGN KEY (pmca_id) REFERENCES cobranca.parcel_motivo_cancelamento (pmca_id) MATCH SIMPLE ON UPDATE RESTRICT ON DELETE RESTRICT;

COMMENT ON COLUMN cobranca.parcelamento.parc_tmcancelamento IS 'data e hora do cancelamento do parcelamento';
COMMENT ON COLUMN cobranca.parcelamento.usur_idcancelamento IS 'id de usuario que efetuou o cancelamento do parcelamento';
COMMENT ON COLUMN cobranca.parcelamento.pmca_id IS 'id do motivo de cancelamento do parcelamento';

INSERT INTO seguranca.operacao VALUES (16040,389,'Cancelar Parcelamento do Debito','canParDeb','cancelarParcelamentoAction.do',now(),null,null,2,null,2);
INSERT INTO seguranca.grupo_func_operacao VALUES (1,16040,331,now());
INSERT INTO seguranca.grupo_func_operacao VALUES (11,16040,331,now());

-- //@UNDO
-- SQL to undo the change goes here.

ALTER TABLE cobranca.parcelamento DROP COLUMN parc_tmcancelamento;
ALTER TABLE cobranca.parcelamento DROP COLUMN usur_idcancelamento;
ALTER TABLE cobranca.parcelamento DROP COLUMN pmca_id;

DROP TABLE cobranca.parcel_motivo_cancelamento;
DROP SEQUENCE cobranca.seq_parcel_motivo_cancelamento;

DELETE FROM seguranca.grupo_func_operacao WHERE oper_id = 16040;
DELETE FROM seguranca.operacao WHERE oper_id = 16040;