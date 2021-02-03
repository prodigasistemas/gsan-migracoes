-- // alter table ordem_servico_foto
-- Migration SQL that makes the change goes here.

ALTER TABLE atendimentopublico.ordem_servico_foto NO FORCE ROW LEVEL SECURITY;
ALTER TABLE atendimentopublico.ordem_servico_foto ALTER COLUMN osft_imfoto DROP NOT NULL;
ALTER TABLE atendimentopublico.ordem_servico_foto ADD COLUMN osft_nomearquivo character varying(100);
ALTER TABLE atendimentopublico.ordem_servico_foto ADD COLUMN osft_caminhoarquivo character varying(200);
    
COMMENT ON COLUMN atendimentopublico.ordem_servico_foto.osft_nomearquivo IS 'Armazena o nome do arquivo com sua extensao';
COMMENT ON COLUMN atendimentopublico.ordem_servico_foto.osft_caminhoarquivo IS 'Armazena o caminho absoluto do arquivo';

-- //@UNDO
-- SQL to undo the change goes here.

ALTER TABLE atendimentopublico.ordem_servico_foto ALTER COLUMN osft_imfoto SET NOT NULL;
ALTER TABLE atendimentopublico.ordem_servico_foto DROP COLUMN osft_nomearquivo;
ALTER TABLE atendimentopublico.ordem_servico_foto DROP COLUMN osft_caminhoarquivo;