-- // altera tamanho campo himc_cdhidrometromarca
-- Migration SQL that makes the change goes here.

ALTER TABLE micromedicao.hidrometro_marca
ALTER COLUMN himc_cdhidrometromarca TYPE  character varying(2);

-- //@UNDO
-- SQL to undo the change goes here.

ALTER TABLE micromedicao.hidrometro_marca
ALTER COLUMN himc_cdhidrometromarca TYPE  character varying(1);
