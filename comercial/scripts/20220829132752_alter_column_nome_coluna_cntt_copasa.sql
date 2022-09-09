-- // alter column nome coluna cntt_copasa
-- Migration SQL that makes the change goes here.

ALTER TABLE cadastro.imovel
RENAME COLUMN cntt_copasa TO imov_idparametrosconvenio;

-- //@UNDO
-- SQL to undo the change goes here.

ALTER TABLE cadastro.imovel
RENAME COLUMN imov_idparametrosconvenio TO cntt_copasa;
