-- // alter table ficha compensacao constraints
-- Migration SQL that makes the change goes here.

ALTER TABLE arrecadacao.ficha_compensacao ADD CONSTRAINT fk5_conta_geral FOREIGN KEY (cnta_id) REFERENCES faturamento.conta_geral(cnta_id);
ALTER TABLE arrecadacao.ficha_compensacao ADD CONSTRAINT fk6_guia_pagamento_geral FOREIGN KEY (gpag_id) REFERENCES faturamento.guia_pagamento_geral(gpag_id);

ALTER TABLE arrecadacao.ficha_compensacao  DROP CONSTRAINT fk3_conta;
ALTER TABLE arrecadacao.ficha_compensacao  DROP CONSTRAINT fk4_guia_pagamento;

-- //@UNDO
-- SQL to undo the change goes here.

ALTER TABLE arrecadacao.ficha_compensacao ADD CONSTRAINT fk3_conta FOREIGN KEY (cnta_id) REFERENCES faturamento.conta_geral(cnta_id);
ALTER TABLE arrecadacao.ficha_compensacao ADD CONSTRAINT fk4_guia_pagamento FOREIGN KEY (gpag_id) REFERENCES faturamento.guia_pagamento_geral(gpag_id);

ALTER TABLE arrecadacao.ficha_compensacao  DROP CONSTRAINT fk5_conta_geral;
ALTER TABLE arrecadacao.ficha_compensacao  DROP CONSTRAINT fk6_guia_pagamento_geral ;
