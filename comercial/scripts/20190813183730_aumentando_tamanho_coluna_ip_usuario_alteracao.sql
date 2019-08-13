-- // aumentando_tamanho_coluna_ip_usuario_alteracao
-- Migration SQL that makes the change goes here.
UPDATE pg_attribute SET atttypmod = 39+4
WHERE attrelid = 'seguranca.usuario_alteracao'::regclass
AND attname = 'usac_nnip';


-- //@UNDO
-- SQL to undo the change goes here.
UPDATE pg_attribute SET atttypmod = 15+4
WHERE attrelid = 'seguranca.usuario_alteracao'::regclass
AND attname = 'usac_nnip';

