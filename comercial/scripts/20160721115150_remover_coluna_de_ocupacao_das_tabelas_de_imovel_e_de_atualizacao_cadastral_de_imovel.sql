-- // remover coluna de ocupacao das tabelas de imovel e de atualizacao cadastral de imovel
-- Migration SQL that makes the change goes here.

alter table cadastro.imovel                drop column imov_ocupacao_imovel;

alter table cadastro.imovel_atlz_cadastral drop column imac_ocupacao_imovel;

-- //@UNDO
-- SQL to undo the change goes here.

alter table cadastro.imovel add column imov_ocupacao_imovel smallint;

COMMENT ON COLUMN cadastro.imovel.imov_ocupacao_imovel IS '0 - Criancas | 1 - Adultos | 2 - Alunos | 3 - Idosos | 4 - Caes | 5 - Empregados | 6 - Outros';

alter table cadastro.imovel_atlz_cadastral add column imac_ocupacao_imovel smallint;

COMMENT ON COLUMN cadastro.imovel_atlz_cadastral.imac_ocupacao_imovel IS '0 - Criancas | 1 - Adultos | 2 - Alunos | 3 - Idosos | 4 - Caes | 5 - Empregados | 6 - Outros';
