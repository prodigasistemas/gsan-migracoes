-- // alter table ordem_servico_foto
-- Migration SQL that makes the change goes here.

ALTER TABLE atendimentopublico.ordem_servico_foto NO FORCE ROW LEVEL SECURITY;
ALTER TABLE atendimentopublico.ordem_servico_foto DROP COLUMN osft_imfoto;
ALTER TABLE atendimentopublico.ordem_servico_foto DROP COLUMN osft_tmultimaalteracao;
ALTER TABLE atendimentopublico.ordem_servico_foto ADD COLUMN osft_nmfoto character varying(100) not null;
ALTER TABLE atendimentopublico.ordem_servico_foto ADD COLUMN osft_caminhofoto character varying(200) not null;
ALTER TABLE atendimentopublico.ordem_servico_foto ADD COLUMN osft_tmultimaalteracao timestamp not null;
    
COMMENT ON COLUMN atendimentopublico.ordem_servico_foto.osft_nmfoto IS 'Armazena o nome da foto com sua extensao';
COMMENT ON COLUMN atendimentopublico.ordem_servico_foto.osft_caminhofoto IS 'Armazena o caminho absoluto da foto';

-- //@UNDO
-- SQL to undo the change goes here.

ALTER TABLE atendimentopublico.ordem_servico_foto DROP COLUMN osft_nmfoto;
ALTER TABLE atendimentopublico.ordem_servico_foto DROP COLUMN osft_caminhofoto;
ALTER TABLE atendimentopublico.ordem_servico_foto DROP COLUMN osft_tmultimaalteracao;
ALTER TABLE atendimentopublico.ordem_servico_foto ADD COLUMN osft_imfoto bytea NOT NULL;
ALTER TABLE atendimentopublico.ordem_servico_foto ADD COLUMN osft_tmultimaalteracao timestamp not null;