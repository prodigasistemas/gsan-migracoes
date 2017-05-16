-- // Novo campo na tabela empr_cobr_conta_pagto
-- Migration SQL that makes the change goes here.

alter table cobranca.empr_cobr_conta_pagto add column eccp_icgeracaoarquivo smallint;

update cobranca.empr_cobr_conta_pagto set eccp_icgeracaoarquivo = 2;

alter table cobranca.empr_cobr_conta_pagto alter column eccp_icgeracaoarquivo set not null;


-- //@UNDO
-- SQL to undo the change goes here.


alter table cobranca.empr_cobr_conta_pagto drop column eccp_icgeracaoarquivo;
