-- // Novas colunas ta tabela coluna atlz cad
-- Migration SQL that makes the change goes here.

ALTER TABLE seguranca.tab_col_atlz_cadastral rename column tcac_cnvaloratual to tcac_cnvalortransmitido;

ALTER TABLE seguranca.tab_col_atlz_cadastral ALTER COLUMN tcac_cnvalortransmitido TYPE VARCHAR(200);

ALTER TABLE seguranca.tab_col_atlz_cadastral ADD COLUMN  tcac_cnvalorrevisado VARCHAR(200);

ALTER TABLE seguranca.tab_col_atlz_cadastral ADD COLUMN  tcac_cnvalorfiscalizado VARCHAR(200);

ALTER TABLE seguranca.tab_col_atlz_cadastral ADD COLUMN  tcac_icfiscalizado smallint NULL;


-- //@UNDO
-- SQL to undo the change goes here.

ALTER TABLE seguranca.tab_col_atlz_cadastral rename column  tcac_cnvalortransmitido to tcac_cnvaloratual;

ALTER TABLE seguranca.tab_col_atlz_cadastral DROP COLUMN  tcac_cnvalorrevisado;

ALTER TABLE seguranca.tab_col_atlz_cadastral DROP COLUMN  tcac_cnvalorfiscalizado;

ALTER TABLE seguranca.tab_col_atlz_cadastral DROP COLUMN  tcac_icfiscalizado;