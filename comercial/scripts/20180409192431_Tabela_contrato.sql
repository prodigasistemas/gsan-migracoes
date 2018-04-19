-- // Tabela contrato
-- Migration SQL that makes the change goes here.

CREATE TABLE cadastro.contrato_tipo
(
  cttp_id integer NOT NULL, -- id do tipo de contrato
  cttp_dscontratotipo character varying(20), -- descricao do tipo de contrato
  cttp_icuso smallint, -- indicador de uso (1-ativo 2-inativo)
  cttp_tmultimaalteracao timestamp without time zone NOT NULL DEFAULT now(), -- timestamp da inclusao/ultima alteracao
    CONSTRAINT contrato_tipo_pkey PRIMARY KEY (cttp_id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE cadastro.contrato_tipo
  OWNER TO gsan_admin;
GRANT ALL ON TABLE cadastro.contrato_tipo TO gsan_admin;
GRANT SELECT, UPDATE, INSERT, DELETE ON TABLE cadastro.contrato_tipo TO pg_aplic;
GRANT SELECT ON TABLE cadastro.contrato_tipo TO pg_users;
COMMENT ON COLUMN cadastro.contrato_tipo.cttp_id IS 'id do tipo de contrato';
COMMENT ON COLUMN cadastro.contrato_tipo.cttp_dscontratotipo IS 'descricao do tipo de contrato';
COMMENT ON COLUMN cadastro.contrato_tipo.cttp_icuso IS 'indicador de uso (1-ativo 2-inativo)';
COMMENT ON COLUMN cadastro.contrato_tipo.cttp_tmultimaalteracao IS 'timestamp da inclusao/ultima alteracao';

INSERT INTO cadastro.contrato_tipo VALUES (1, 'DEMANDA', 1, now());
INSERT INTO cadastro.contrato_tipo VALUES (2, 'ADESAO', 1, now());

CREATE TABLE cadastro.contrato
(
  cntt_id integer NOT NULL, -- id do contrato
  imov_id integer NOT NULL, -- id do imovel
  cntt_dtcontratoinicio date NOT NULL, -- da inicio do contrato
  cntt_dtcontratofim date, -- data contrato fim
  cntt_nncontrato character(20) NOT NULL, -- numero do contrato
  cntt_tmultimaalteracao timestamp without time zone NOT NULL DEFAULT now(), -- timestamp da inclusao/ultima alteracao
  cntt_dtcontratoencerramento date, -- data do encerramento do contrato
  ctcn_id integer, -- id do motivo do cancelamento contrato
  cttp_id integer, -- id do tipo de contrato
  CONSTRAINT contrato_pkey PRIMARY KEY (cntt_id),
  CONSTRAINT fk1_contrato FOREIGN KEY (imov_id)
      REFERENCES cadastro.imovel (imov_id) MATCH Simple
      ON UPDATE RESTRICT ON DELETE RESTRICT,
  CONSTRAINT fk2_contrato FOREIGN KEY (ctcn_id)
      REFERENCES arrecadacao.contrato_motivo_cancel (ctcn_id) MATCH Simple
      ON UPDATE RESTRICT ON DELETE RESTRICT,
  CONSTRAINT fk3_contrato FOREIGN KEY (cttp_id)
      REFERENCES cadastro.contrato_tipo (cttp_id) MATCH Simple
      ON UPDATE RESTRICT ON DELETE RESTRICT
)
WITH (
  OIDS=FALSE
);
ALTER TABLE cadastro.contrato
  OWNER TO gsan_admin;
GRANT ALL ON TABLE cadastro.contrato TO gsan_admin;
GRANT SELECT, UPDATE, INSERT, DELETE ON TABLE cadastro.contrato TO pg_aplic;
GRANT SELECT ON TABLE cadastro.contrato TO pg_users;
COMMENT ON COLUMN cadastro.contrato.cntt_id IS 'id do contrato';
COMMENT ON COLUMN cadastro.contrato.imov_id IS 'id do imovel';
COMMENT ON COLUMN cadastro.contrato.cntt_dtcontratoinicio IS 'da inicio do contrato';
COMMENT ON COLUMN cadastro.contrato.cntt_dtcontratofim IS 'data contrato fim';
COMMENT ON COLUMN cadastro.contrato.cntt_nncontrato IS 'numero do contrato';
COMMENT ON COLUMN cadastro.contrato.cntt_tmultimaalteracao IS 'timestamp da inclusao/ultima alteracao';
COMMENT ON COLUMN cadastro.contrato.cntt_dtcontratoencerramento IS 'data do encerramento do contrato';
COMMENT ON COLUMN cadastro.contrato.ctcn_id IS 'id do motivo do cancelamento contrato';
COMMENT ON COLUMN cadastro.contrato.cttp_id IS 'id do tipo de contrato';

CREATE INDEX xfk1_contrato
  ON cadastro.contrato
  USING btree
  (imov_id)
TABLESPACE indices;

CREATE SEQUENCE cadastro.seq_contrato
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
ALTER TABLE cadastro.seq_contrato
  OWNER TO gsan_admin;
GRANT SELECT, UPDATE ON TABLE cadastro.seq_contrato TO gsan_admin;
GRANT SELECT, UPDATE ON TABLE cadastro.seq_contrato TO pg_aplic;
GRANT SELECT ON TABLE cadastro.seq_contrato TO pg_users;


insert into cadastro.contrato (
  select nextval('cadastro.seq_contrato'),  
        imov_id, 
        ctdm_dtcontratoinicio, 
        ctdm_dtcontratofim, 
        ctdm_nncontrato, 
        ctdm_tmultimaalteracao, 
        ctdm_dtcontratoencerramento, 
        ctcn_id, 1  
  from arrecadacao.contrato_demanda);

CREATE TABLE cadastro.contrato_adesao
(
  ctad_id integer NOT NULL, -- id do contrato adesao
  cntt_id integer NOT NULL, -- id do contrato
  clim_id integer NOT NULL, -- id do coliente imovel
  ctad_tmultimaalteracao timestamp without time zone NOT NULL DEFAULT now(), -- timestamp da inclusao/ultima alteracao
  CONSTRAINT contrato_adesao_pkey PRIMARY KEY (ctad_id),
  CONSTRAINT fk1_contrato_adesao FOREIGN KEY (cntt_id)
      REFERENCES cadastro.contrato (cntt_id) MATCH Simple
      ON UPDATE RESTRICT ON DELETE RESTRICT,
  CONSTRAINT fk2_contrato_adesao FOREIGN KEY (clim_id)
      REFERENCES cadastro.cliente_imovel (clim_id) MATCH Simple
      ON UPDATE RESTRICT ON DELETE RESTRICT
)
WITH (
  OIDS=FALSE
);
ALTER TABLE cadastro.contrato_adesao
  OWNER TO gsan_admin;
GRANT ALL ON TABLE cadastro.contrato_adesao TO gsan_admin;
GRANT SELECT, UPDATE, INSERT, DELETE ON TABLE cadastro.contrato_adesao TO pg_aplic;
GRANT SELECT ON TABLE cadastro.contrato_adesao TO pg_users;
COMMENT ON COLUMN cadastro.contrato_adesao.ctad_id IS 'id do contrato_adesao';
COMMENT ON COLUMN cadastro.contrato_adesao.cntt_id IS 'id do contrato';
COMMENT ON COLUMN cadastro.contrato_adesao.clim_id IS 'id do cliente imovel';

CREATE INDEX xfk1_contrato_adesao
  ON cadastro.contrato_adesao
  USING btree
  (cntt_id)
TABLESPACE indices;

CREATE SEQUENCE cadastro.seq_contrato_adesao
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
ALTER TABLE cadastro.seq_contrato_adesao
  OWNER TO gsan_admin;
GRANT SELECT, UPDATE ON TABLE cadastro.seq_contrato_adesao TO gsan_admin;
GRANT SELECT, UPDATE ON TABLE cadastro.seq_contrato_adesao TO pg_aplic;
GRANT SELECT ON TABLE cadastro.seq_contrato_adesao TO pg_users;


drop table arrecadacao.contrato_demanda;
drop sequence arrecadacao.seq_contrato_demanda;


-- //@UNDO
-- SQL to undo the change goes here.


CREATE TABLE arrecadacao.contrato_demanda
(
  ctdm_id integer NOT NULL, -- id do contrato de demanda
  imov_id integer NOT NULL, -- id do imovel
  ctdm_dtcontratoinicio date NOT NULL, -- da inicio do contrato
  ctdm_dtcontratofim date NOT NULL, -- data contrato fim
  ctdm_nncontrato character(10) NOT NULL, -- numero do contrato
  ctdm_tmultimaalteracao timestamp without time zone NOT NULL DEFAULT now(), -- timestamp da inclusao/ultima alteracao
  ctdm_dtcontratoencerramento date, -- data do encerramento do contrato
  ctcn_id integer, -- id do motivo do cancelamento contrato
  CONSTRAINT contrato_demanda_pkey PRIMARY KEY (ctdm_id),
  CONSTRAINT fk1_contrato_demanda FOREIGN KEY (imov_id)
      REFERENCES cadastro.imovel (imov_id) MATCH Simple
      ON UPDATE RESTRICT ON DELETE RESTRICT,
  CONSTRAINT fk2_contrato_demanda FOREIGN KEY (ctcn_id)
      REFERENCES arrecadacao.contrato_motivo_cancel (ctcn_id) MATCH Simple
      ON UPDATE RESTRICT ON DELETE RESTRICT
)
WITH (
  OIDS=FALSE
);
ALTER TABLE arrecadacao.contrato_demanda
  OWNER TO gsan_admin;
GRANT ALL ON TABLE arrecadacao.contrato_demanda TO gsan_admin;
GRANT SELECT, UPDATE, INSERT, DELETE ON TABLE arrecadacao.contrato_demanda TO pg_aplic;
GRANT SELECT ON TABLE arrecadacao.contrato_demanda TO pg_users;
COMMENT ON COLUMN arrecadacao.contrato_demanda.ctdm_id IS 'id do contrato de demanda';
COMMENT ON COLUMN arrecadacao.contrato_demanda.imov_id IS 'id do imovel';
COMMENT ON COLUMN arrecadacao.contrato_demanda.ctdm_dtcontratoinicio IS 'da inicio do contrato';
COMMENT ON COLUMN arrecadacao.contrato_demanda.ctdm_dtcontratofim IS 'data contrato fim';
COMMENT ON COLUMN arrecadacao.contrato_demanda.ctdm_nncontrato IS 'numero do contrato';
COMMENT ON COLUMN arrecadacao.contrato_demanda.ctdm_tmultimaalteracao IS 'timestamp da inclusao/ultima alteracao';
COMMENT ON COLUMN arrecadacao.contrato_demanda.ctdm_dtcontratoencerramento IS 'data do encerramento do contrato';
COMMENT ON COLUMN arrecadacao.contrato_demanda.ctcn_id IS 'id do motivo do cancelamento contrato';


CREATE INDEX xfk1_contrato_demanda
  ON arrecadacao.contrato_demanda
  USING btree
  (imov_id)
TABLESPACE indices;

CREATE SEQUENCE arrecadacao.seq_contrato_demanda
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
ALTER TABLE arrecadacao.seq_contrato_demanda
  OWNER TO gsan_admin;
GRANT SELECT, UPDATE ON TABLE arrecadacao.seq_contrato_demanda TO gsan_admin;
GRANT SELECT, UPDATE ON TABLE arrecadacao.seq_contrato_demanda TO pg_aplic;
GRANT SELECT ON TABLE arrecadacao.seq_contrato_demanda TO pg_users;


insert into arrecadacao.contrato_demanda (
  select nextval('cadastro.seq_contrato'),  
        imov_id, 
        cntt_dtcontratoinicio, 
        cntt_dtcontratofim, 
        cntt_nncontrato, 
        cntt_tmultimaalteracao, 
        cntt_dtcontratoencerramento, 
        ctcn_id  
  from cadastro.contrato);

drop table cadastro.contrato_adesao;
drop table cadastro.contrato;
drop table cadastro.contrato_tipo;

drop sequence cadastro.seq_contrato_adesao;
drop sequence cadastro.seq_contrato;

