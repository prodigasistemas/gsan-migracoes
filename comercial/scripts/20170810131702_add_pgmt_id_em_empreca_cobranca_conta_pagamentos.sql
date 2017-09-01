-- // add pgmt_id em empreca cobranca conta pagamentos
-- Migration SQL that makes the change goes here.

ALTER TABLE cobranca.empr_cobr_conta_pagto ADD COLUMN pgmt_id integer;

-- //@UNDO
-- SQL to undo the change goes here.

ALTER TABLE cobranca.empr_cobr_conta_pagto DROP COLUMN pgmt_id;
