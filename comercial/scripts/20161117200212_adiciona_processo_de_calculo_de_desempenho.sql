-- // adiciona processo de calculo de desempenho
-- Migration SQL that makes the change goes here.

insert into batch.processo
values
(510,'CALCULO DESEMPENHO','CALCDES',2,now(),4,null,2,0,'job_calculo_desempenho',0);

insert into batch.processo_atividade 
(id, nmarquivobatch, limiteexecucao, descricao, ordemexecucao, exibiremtela, proc_id, tmultimaalteracao, processa_varios_itens)
values 
(nextval('batch.seq_processo_atividade'), 'job_calculo_desempenho', 1, 'CALCULAR DESEMPENHO', 1, 1, 510, now(),TRUE);

-- //@UNDO
-- SQL to undo the change goes here.

delete from batch.controle_processo_atividade where proa_id in (select id from  batch.processo_atividade where proc_id = 510);

delete from batch.processo_atividade where proc_id = 510;

delete from batch.processo_parametros  where proi_id in (select proi_id from batch.processo_iniciado  where proc_id = 510);

delete from batch.processo_iniciado  where proc_id = 510;

delete from batch.processo           where proc_id = 510;

