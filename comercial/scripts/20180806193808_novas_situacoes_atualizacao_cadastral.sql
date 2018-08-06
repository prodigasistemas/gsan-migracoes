-- // novas situacoes atualizacao cadastral
-- Migration SQL that makes the change goes here.

insert into cadastro.situacao_atlz_cadastral values (nextval('cadastro.seq_situacao_atlz_cadastral'), 'REVISADO', 1, now());
insert into cadastro.situacao_atlz_cadastral values (nextval('cadastro.seq_situacao_atlz_cadastral'), 'FISCALIZADO', 1, now());

-- //@UNDO
-- SQL to undo the change goes here.

delete from cadastro.situacao_atlz_cadastral where siac_dssituacao like 'REVISADO';
    delete from cadastro.situacao_atlz_cadastral where siac_dssituacao like 'FISCALIZADO';

