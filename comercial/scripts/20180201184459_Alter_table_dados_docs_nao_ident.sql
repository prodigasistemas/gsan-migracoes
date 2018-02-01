-- // Alter table dados docs nao ident
-- Migration SQL that makes the change goes here.

alter table arrecadacao.dados_docs_nao_ident ALTER COLUMN  avbc_id  DROP NOT NULL;
alter table arrecadacao.dados_docs_nao_ident ALTER COLUMN  arrc_id  DROP NOT NULL;

-- //@UNDO
-- SQL to undo the change goes here.

alter table arrecadacao.dados_docs_nao_ident ALTER COLUMN  avbc_id  SET NOT NULL;
alter table arrecadacao.dados_docs_nao_ident ALTER COLUMN  arrc_id  SET NOT NULL;
