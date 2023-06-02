-- // acesso_tabela_cadastro_agua_para
-- Migration SQL that makes the change goes here.

GRANT ALL ON TABLE cadastro.cadastro_agua_para TO gsan_online;
GRANT ALL ON TABLE cadastro.seq_cadastro_agua_para TO gsan_batch;
GRANT SELECT ON TABLE cadastro.cadastro_agua_para TO pg_users;
GRANT DELETE, INSERT, SELECT, UPDATE ON TABLE cadastro.cadastro_agua_para TO pg_aplic;

GRANT ALL ON TABLE cadastro.seq_cadastro_agua_para TO gsan_online;
GRANT ALL ON TABLE cadastro.seq_cadastro_agua_para TO gsan_batch;
GRANT SELECT ON TABLE cadastro.seq_cadastro_agua_para TO pg_users;
GRANT DELETE, INSERT, SELECT, UPDATE ON TABLE cadastro.seq_cadastro_agua_para TO pg_aplic;

-- //@UNDO
-- SQL to undo the change goes here.


