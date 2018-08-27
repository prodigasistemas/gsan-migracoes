-- // Coluna valor preaprovado - tab_col_atlz_cad
-- Migration SQL that makes the change goes here.

ALTER TABLE seguranca.tab_col_atlz_cadastral ADD COLUMN  tcac_cnvalorpreaprovado VARCHAR(200);

-- //@UNDO
-- SQL to undo the change goes here.

ALTER TABLE seguranca.tab_col_atlz_cadastral DROP COLUMN  tcac_cnvalorpreaprovado;

