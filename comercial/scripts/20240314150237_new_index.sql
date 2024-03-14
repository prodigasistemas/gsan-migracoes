-- // new_index
-- Migration SQL that makes the change goes here.

DROP INDEX arrecadacao.xak1_arrecadador_movimento;

CREATE INDEX xak1_arrecadador_movimento ON 
arrecadacao.arrecadador_movimento
(armv_cdbanco ASC, armv_nnnsa ASC, armv_cdconvenio ASC, armv_dsidentificacaoservico ASC, armv_cdremessa ASC);

-- //@UNDO
-- SQL to undo the change goes here.

DROP INDEX arrecadacao.xak1_arrecadador_movimento;

CREATE INDEX xak1_arrecadador_movimento ON 
arrecadacao.arrecadador_movimento
(armv_cdbanco ASC, armv_nnnsa ASC, armv_dsidentificacaoservico ASC, armv_cdremessa ASC);
