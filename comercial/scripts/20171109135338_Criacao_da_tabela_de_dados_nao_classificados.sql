-- // Criacao da tabela de dados nao classificados
-- Migration SQL that makes the change goes here.

CREATE TABLE arrecadacao.dados_pag_nao_class (
    dpnc_id integer NOT NULL,
    dpnc_amreferenciaarrecadacao integer NOT NULL,
    dotp_id integer NOT NULL,
    dotp_idagregador integer,
    dpnc_vlpagamento numeric(13,2) NOT NULL,
    dpnc_vldocumento numeric(13,2) NOT NULL,
    dpnc_iccontaretificada smallint DEFAULT 2,
    dpnc_datapagamento date NOT NULL NOT NULL,
    imov_id integer,
    clie_id integer,
    dpnc_amreferenciadocumento integer NOT NULL,
    avbc_id integer NOT NULL,
    arrc_id integer NOT NULL,
    pgst_id integer NOT NULL,
    dpnc_tmultimaalteracao timestamp without time zone NOT NULL DEFAULT now(),
    CONSTRAINT dados_pag_nao_class_pkey PRIMARY KEY (dpnc_id),
    
    CONSTRAINT fk01_dpnc FOREIGN KEY (dotp_id)  
      REFERENCES cobranca.documento_tipo (dotp_id) MATCH Simple
      ON UPDATE RESTRICT ON DELETE RESTRICT,
    
    CONSTRAINT fk02_dpnc FOREIGN KEY (dotp_idagregador)  
      REFERENCES cobranca.documento_tipo (dotp_id) MATCH Simple
      ON UPDATE RESTRICT ON DELETE RESTRICT,

    CONSTRAINT fk03_dpnc FOREIGN KEY (imov_id)
      REFERENCES cadastro.imovel (imov_id) MATCH Simple
      ON UPDATE RESTRICT ON DELETE RESTRICT,

    CONSTRAINT fk04_dpnc FOREIGN KEY (clie_id)
      REFERENCES cadastro.cliente (clie_id) MATCH Simple
      ON UPDATE RESTRICT ON DELETE RESTRICT,

    CONSTRAINT fk05_dpnc FOREIGN KEY (avbc_id)
      REFERENCES arrecadacao.aviso_bancario (avbc_id) MATCH Simple
      ON UPDATE RESTRICT ON DELETE RESTRICT,

    CONSTRAINT fk06_dpnc FOREIGN KEY (arrc_id)
      REFERENCES arrecadacao.arrecadador (arrc_id) MATCH Simple
      ON UPDATE RESTRICT ON DELETE RESTRICT,

    CONSTRAINT fk07_dpnc FOREIGN KEY (pgst_id)
      REFERENCES arrecadacao.pagamento_situacao (pgst_id) MATCH Simple
      ON UPDATE RESTRICT ON DELETE RESTRICT
)
WITH (
  OIDS=FALSE
);
ALTER TABLE arrecadacao.dados_pag_nao_class OWNER TO gsan_admin;
GRANT ALL ON TABLE arrecadacao.dados_pag_nao_class TO gsan_admin;
GRANT SELECT, UPDATE, INSERT, DELETE ON TABLE arrecadacao.dados_pag_nao_class TO role_aplic;
GRANT SELECT ON TABLE arrecadacao.dados_pag_nao_class TO role_users;


CREATE SEQUENCE arrecadacao.seq_dados_pag_nao_class
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
ALTER TABLE arrecadacao.seq_dados_pag_nao_class
  OWNER TO gsan_admin;
GRANT SELECT, UPDATE ON TABLE arrecadacao.seq_dados_pag_nao_class TO gsan_admin;
GRANT SELECT, UPDATE ON TABLE arrecadacao.seq_dados_pag_nao_class TO role_aplic;
GRANT SELECT ON TABLE arrecadacao.seq_dados_pag_nao_class TO role_users;


insert into batch.unidade_processamento values (22, 'REFERENCIA', now(), 1, 'REF');

insert into seguranca.funcionalidade values (16041, 8, 'Gerar dados de pagamentos não classificados', now(), 'Gsan/Batch', null, 2 , 'DdPgNClass', 0, 2, 2, null, null);
-- //@UNDO
-- SQL to undo the change goes here.

delete from batch.unidade_processamento where unpr_id = 22;
delete from seguranca.funcionalidade  where fncd_id = 16041; 
drop sequence arrecadacao.seq_dados_pag_nao_class;
drop table arrecadacao.dados_pag_nao_class;


