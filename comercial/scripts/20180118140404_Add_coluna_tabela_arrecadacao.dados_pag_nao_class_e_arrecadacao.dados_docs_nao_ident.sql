-- // Add coluna tabela arrecadacao.dados_pag_nao_class e arrecadacao.dados_docs_nao_ident
-- Migration SQL that makes the change goes here.


ALTER TABLE arrecadacao.dados_pag_nao_class ADD COLUMN dpnc_amreferenciafechamento integer ;
ALTER TABLE arrecadacao.dados_docs_nao_ident ADD COLUMN ddni_amreferenciafechamento integer ;



-- //@UNDO
-- SQL to undo the change goes here.

ALTER TABLE arrecadacao.dados_pag_nao_class DROP COLUMN dpnc_amreferenciafechamento;
ALTER TABLE arrecadacao.dados_docs_nao_ident DROP COLUMN ddni_amreferenciafechamento;