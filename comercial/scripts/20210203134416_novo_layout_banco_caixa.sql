-- // novo layout banco caixa
-- Migration SQL that makes the change goes here.

ALTER TABLE arrecadacao.banco ADD COLUMN bnco_adere_cnab150 boolean  NOT NULL default 'false';

UPDATE arrecadacao.banco SET bnco_adere_cnab150 = true WHERE bnco_id = 104;

-- //@UNDO
-- SQL to undo the change goes here.

ALTER TABLE arrecadacao.banco DROP COLUMN bnco_adere_cnab150;
