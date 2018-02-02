-- // Add campo desconto tabela empresa cobranca conta pagamento
-- Migration SQL that makes the change goes here.

ALTER TABLE cobranca.empr_cobr_conta_pagto ADD COLUMN eccp_vldesconto numeric(13,2);

-- //@UNDO
-- SQL to undo the change goes here.


ALTER TABLE cobranca.empr_cobr_conta_pagto DROP COLUMN eccp_vldesconto;