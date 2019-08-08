-- // adicionando_coluna_complemento_tab_col_atlz_cadastral
-- Migration SQL that makes the change goes here.

ALTER TABLE seguranca.tab_col_atlz_cadastral ADD COLUMN tcac_complemento varchar(100);
COMMENT ON COLUMN seguranca.tab_col_atlz_cadastral.tcac_complemento IS 'Complemento para casos de mais de uma valor com mesmo nome de coluna, como telefone por exemplo';


-- //@UNDO
-- SQL to undo the change goes here.

ALTER TABLE seguranca.tab_col_atlz_cadastral DROP COLUMN tcac_complemento;


