-- // Funcionalidade encerrar comandos cobranda por empresa
-- Migration SQL that makes the change goes here.

insert into seguranca.grupo_func_operacao values (1, 1785, 1471, now());

update batch.processo_funcionalidade set prfn_icuso = 1 where proc_id = 506;

insert into batch.processo_funcionalidade values (nextval('batch.seq_processo_funcionalidade'), 151, now(), 15, 1, 1474, 1, null);

update batch.processo_funcionalidade set prfn_nnsequencialexecucao = 2 where  prfn_id = 631  and proc_id = 151;
update batch.processo_funcionalidade set prfn_nnsequencialexecucao = 3 where  prfn_id = 1816 and proc_id = 151;
update batch.processo_funcionalidade set prfn_nnsequencialexecucao = 4 where  prfn_id = 1818 and proc_id = 151;


-- //@UNDO
-- SQL to undo the change goes here.

insert into seguranca.grupo_func_operacao values (1, 1785, 1471, now());

update batch.processo_funcionalidade set prfn_icuso = 2 where proc_id = 506;

delete from  batch.processo_funcionalidade where proc_id =  151 and fncd_id =  1474 and prfn_nnsequencialexecucao = 1;

update batch.processo_funcionalidade set prfn_nnsequencialexecucao = 1 where  prfn_id = 631  and proc_id = 151;
update batch.processo_funcionalidade set prfn_nnsequencialexecucao = 2 where  prfn_id = 1816 and proc_id = 151;
update batch.processo_funcionalidade set prfn_nnsequencialexecucao = 3 where  prfn_id = 1818 and proc_id = 151;


