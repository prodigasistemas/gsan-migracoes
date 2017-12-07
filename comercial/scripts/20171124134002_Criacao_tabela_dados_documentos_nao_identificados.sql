-- // Criacao tabela dados documentos nao identificados
-- Migration SQL that makes the change goes here.

CREATE TABLE arrecadacao.dados_docs_nao_ident (
    ddni_id integer NOT NULL,
    ddni_amreferenciaarrecadacao integer NOT NULL,
    ddni_vldocumento numeric(13,2) NOT NULL,
    ddni_datadocumento date NOT NULL NOT NULL,
    avbc_id integer NOT NULL,
    arrc_id integer NOT NULL,
    ddni_tmultimaalteracao timestamp without time zone NOT NULL DEFAULT now(),
    CONSTRAINT dados_docs_nao_ident_pkey PRIMARY KEY (ddni_id),

    CONSTRAINT fk01_ddni FOREIGN KEY (avbc_id)
      REFERENCES arrecadacao.aviso_bancario (avbc_id) MATCH Simple
      ON UPDATE RESTRICT ON DELETE RESTRICT,

    CONSTRAINT fk02_ddni FOREIGN KEY (arrc_id)
      REFERENCES arrecadacao.arrecadador (arrc_id) MATCH Simple
      ON UPDATE RESTRICT ON DELETE RESTRICT
)
WITH (
  OIDS=FALSE
);
ALTER TABLE arrecadacao.dados_docs_nao_ident OWNER TO gsan_admin;
GRANT ALL ON TABLE arrecadacao.dados_docs_nao_ident TO gsan_admin;
GRANT SELECT, UPDATE, INSERT, DELETE ON TABLE arrecadacao.dados_docs_nao_ident TO pg_aplic;
GRANT SELECT ON TABLE arrecadacao.dados_docs_nao_ident TO pg_users;


CREATE SEQUENCE arrecadacao.seq_dados_docs_nao_ident
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
ALTER TABLE arrecadacao.seq_dados_docs_nao_ident
  OWNER TO gsan_admin;
GRANT SELECT, UPDATE ON TABLE arrecadacao.seq_dados_docs_nao_ident TO gsan_admin;
GRANT SELECT, UPDATE ON TABLE arrecadacao.seq_dados_docs_nao_ident TO pg_aplic;
GRANT SELECT ON TABLE arrecadacao.seq_dados_docs_nao_ident TO pg_users;


insert into seguranca.funcionalidade values (16042, 8, 'Gerar dados de documentos não identificados', now(), 'Gsan/Batch', null, 2 , 'DdDcNIdent', 0, 2, 2, null, null);
-- //@UNDO
-- SQL to undo the change goes here.

delete from batch.unidade_processamento where unpr_id = 22;
delete from seguranca.funcionalidade  where fncd_id = 16042; 
drop sequence arrecadacao.seq_dados_docs_nao_ident;
drop table arrecadacao.dados_docs_nao_ident;


