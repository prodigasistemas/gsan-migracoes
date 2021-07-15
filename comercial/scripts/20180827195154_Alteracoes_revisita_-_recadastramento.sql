-- // Alteracoes revisita - recadastramento
-- Migration SQL that makes the change goes here.

alter table cadastro.cadastro_ocorrencia add column cocr_icvisita smallint;

CREATE SEQUENCE atualizacaocadastral.seq_visita
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
ALTER TABLE atualizacaocadastral.seq_visita
  OWNER TO gsan_admin;
GRANT SELECT, UPDATE ON TABLE atualizacaocadastral.seq_visita TO gsan_admin;
GRANT SELECT, UPDATE ON TABLE atualizacaocadastral.seq_visita TO role_aplic;
GRANT SELECT ON TABLE atualizacaocadastral.seq_visita TO role_users;


CREATE TABLE atualizacaocadastral.visita
(
  vist_id integer NOT NULL, -- id da visita
  icac_id integer NOT NULL, -- id do imovel controle
  cocr_id integer NOT NULL, -- id da ocorrencia
  vist_tmultimaalteracao timestamp without time zone NOT NULL DEFAULT now(), -- timestamp da inclusao/ultima alteracao
  CONSTRAINT visita_pkey PRIMARY KEY (vist_id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE atualizacaocadastral.visita
  OWNER TO gsan_admin;
GRANT ALL ON TABLE atualizacaocadastral.visita TO gsan_admin;
GRANT SELECT, UPDATE, INSERT, DELETE ON TABLE atualizacaocadastral.visita TO role_aplic;
GRANT SELECT ON TABLE atualizacaocadastral.visita TO role_users;
COMMENT ON COLUMN atualizacaocadastral.visita.vist_id IS 'id da visita';
COMMENT ON COLUMN atualizacaocadastral.visita.icac_id IS 'id do imovel controle';
COMMENT ON COLUMN atualizacaocadastral.visita.cocr_id IS 'id da ocorrencia';
COMMENT ON COLUMN atualizacaocadastral.visita.vist_tmultimaalteracao IS 'timestamp da inclusao/ultima alteracao';

insert into seguranca.operacao values (nextval('seguranca.seq_operacao'), 1194, 'Retornar Arquivos Imoveis A Revisitar Atlz Cad', 
    'RtArqImRvs', 'retornarArquivosImoveisARevisitarAtualizacaoCadastralAction.do', now(), null, null, 6, null, 2);

insert into seguranca.grupo_func_operacao (select 1, oper_id, 1194 from seguranca.operacao where oper_dscaminhourl like '%retornarArquivosImoveisARevisitarAtualizacaoCadastralAction%' );
-- //@UNDO
-- SQL to undo the change goes here.

alter table cadastro.cadastro_ocorrencia drop column cocr_icvisita;

drop table atualizacaocadastral.visita;

drop sequence atualizacaocadastral.seq_visita;