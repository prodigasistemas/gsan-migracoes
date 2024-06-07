-- // permissoes
-- Migration SQL that makes the change goes here.

GRANT ALL ON TABLE public.data_pesquisar_registrar TO role_users;
GRANT ALL ON TABLE public.data_pesquisar_registrar TO gsan_online;
GRANT ALL ON TABLE public.data_pesquisar_registrar TO gsan_batch;

-- //@UNDO
-- SQL to undo the change goes here.


