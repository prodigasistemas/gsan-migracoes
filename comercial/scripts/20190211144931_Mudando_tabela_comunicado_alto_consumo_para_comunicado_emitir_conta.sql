-- // Mudando tabela comunicado alto consumo para comunicado emitir conta
-- Migration SQL that makes the change goes here.

CREATE TABLE faturamento.comunicado_emitir_conta
(
  cmec_id integer NOT NULL,
  cmec_amreferencia integer NOT NULL,
  imov_id integer,
  cmec_tipo integer,
  cmec_icemitido smallint,
  cmec_tmgeracao timestamp without time zone,
  cmec_tmultimaalteracao timestamp without time zone NOT NULL DEFAULT now(),
  CONSTRAINT faturamento_comunicado_emitir_conta_pkey PRIMARY KEY (cmec_id),
  CONSTRAINT fk1_comunicado_emitir_conta FOREIGN KEY (imov_id)
      REFERENCES cadastro.imovel (imov_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT
)
WITH (
  OIDS=FALSE
);

ALTER TABLE faturamento.comunicado_emitir_conta OWNER TO gsan_admin;
GRANT ALL ON TABLE faturamento.comunicado_emitir_conta TO gsan_admin;
GRANT SELECT, UPDATE, INSERT, DELETE ON TABLE faturamento.comunicado_emitir_conta TO pg_aplic;
GRANT SELECT ON TABLE faturamento.comunicado_emitir_conta TO pg_users;

CREATE SEQUENCE faturamento.seq_comunicado_emitir_conta
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 6669
  CACHE 1;

ALTER TABLE faturamento.seq_comunicado_emitir_conta OWNER TO gsan_admin;
GRANT ALL ON TABLE faturamento.seq_comunicado_emitir_conta TO gsan_admin;
GRANT SELECT, UPDATE ON TABLE faturamento.seq_comunicado_emitir_conta TO pg_aplic;
GRANT SELECT ON TABLE faturamento.seq_comunicado_emitir_conta TO pg_users;

insert into faturamento.comunicado_emitir_conta (
    select nextval('faturamento.seq_comunicado_emitir_conta'), ctac_amreferencia, imov_id, 0, 1, ctac_tmultimaalteracao from micromedicao.comunicado_alto_consumo);

drop sequence  micromedicao.seq_comunicado_alto_consumo;
drop table micromedicao.comunicado_alto_consumo;


insert into seguranca.funcionalidade values (16067,13,'Emitir Comunicado Irregularidade Faturamento',now(),'Gsan/','sem url',2,'EnComIrfat',0,2,2,null,'');

insert into  batch.processo_funcionalidade values (nextval('batch.seq_processo_funcionalidade'), 507, now(), 1, 2, 16067, 1, null);
    
alter table atualizacaocadastral.imovel_controle_atlz_cad add column icac_tmliberacaoproc timestamp;



-- //@UNDO
-- SQL to undo the change goes here.

CREATE TABLE micromedicao.comunicado_alto_consumo
(
  ctac_id integer NOT NULL,
  ctac_amreferencia integer NOT NULL,
  imov_id integer,
  ctac_tmultimaalteracao timestamp without time zone NOT NULL DEFAULT now(),
  CONSTRAINT micromedicao_comunicado_alto_consumo_pkey PRIMARY KEY (ctac_id),
  CONSTRAINT fk1_imovel FOREIGN KEY (imov_id)
      REFERENCES cadastro.imovel (imov_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT
)
WITH (
  OIDS=FALSE
);
ALTER TABLE micromedicao.comunicado_alto_consumo
  OWNER TO gsan_admin;
GRANT ALL ON TABLE micromedicao.comunicado_alto_consumo TO gsan_admin;
GRANT SELECT, UPDATE, INSERT, DELETE ON TABLE micromedicao.comunicado_alto_consumo TO pg_aplic;
GRANT SELECT ON TABLE micromedicao.comunicado_alto_consumo TO pg_users;



CREATE SEQUENCE micromedicao.seq_comunicado_alto_consumo
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 6669
  CACHE 1;
ALTER TABLE micromedicao.seq_comunicado_alto_consumo
  OWNER TO gsan_admin;
GRANT ALL ON TABLE micromedicao.seq_comunicado_alto_consumo TO gsan_admin;
GRANT SELECT, UPDATE ON TABLE micromedicao.seq_comunicado_alto_consumo TO pg_aplic;
GRANT SELECT ON TABLE micromedicao.seq_comunicado_alto_consumo TO pg_users;


insert into micromedicao.comunicado_alto_consumo (
    select nextval('micromedicao.seq_comunicado_alto_consumo'), cmec_amreferencia, imov_id, cmec_tmultimaalteracao from faturamento.comunicado_emitir_conta);

alter table atualizacaocadastral.imovel_controle_atlz_cad drop column icac_tmliberacaoproc;



drop sequence  faturamento.seq_comunicado_emitir_conta;
drop table faturamento.comunicado_emitir_conta;


