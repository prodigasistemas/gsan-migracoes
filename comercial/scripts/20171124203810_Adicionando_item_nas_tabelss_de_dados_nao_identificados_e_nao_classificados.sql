-- // Adicionando item nas tabelss de dados nao identificados e nao classificados
-- Migration SQL that makes the change goes here.

ALTER TABLE arrecadacao.dados_docs_nao_ident ADD COLUMN amit_id integer NOT NULL;

ALTER TABLE arrecadacao.dados_docs_nao_ident ADD CONSTRAINT fk03_ddni FOREIGN KEY (amit_id)
      REFERENCES arrecadacao.arrecadador_mov_item (amit_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT;


ALTER TABLE arrecadacao.dados_pag_nao_class ADD COLUMN amit_id integer;

ALTER TABLE arrecadacao.dados_pag_nao_class ADD CONSTRAINT fk08_dpnc FOREIGN KEY (amit_id)
      REFERENCES arrecadacao.arrecadador_mov_item (amit_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT;


-- //@UNDO
-- SQL to undo the change goes here.

ALTER TABLE arrecadacao.dados_docs_nao_ident DROP CONSTRAINT fk03_ddni;
ALTER TABLE arrecadacao.dados_docs_nao_ident DROP COLUMN amit_id;

ALTER TABLE arrecadacao.dados_pag_nao_class DROP CONSTRAINT fk08_dpnc;
ALTER TABLE arrecadacao.dados_pag_nao_class DROP COLUMN amit_id;


