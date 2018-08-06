-- // Add novas situacoes de atualizacao cadastral
-- Migration SQL that makes the change goes here.

insert into cadastro.situacao_atlz_cadastral values (nextval('cadastro.seq_situacao_atlz_cadastral'), 'A REVISAR', 1, now());
insert into cadastro.situacao_atlz_cadastral values (nextval('cadastro.seq_situacao_atlz_cadastral'), 'EM REVISAO', 1, now());

-- //@UNDO
-- SQL to undo the change goes here.

delete from cadastro.situacao_atlz_cadastral where siac_dssituacao like 'A REVISAR';
    delete from cadastro.situacao_atlz_cadastral where siac_dssituacao like 'EM REVISAO';


