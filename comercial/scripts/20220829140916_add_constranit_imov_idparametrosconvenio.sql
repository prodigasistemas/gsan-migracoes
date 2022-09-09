-- // add constranit imov_idparametrosconvenio
-- Migration SQL that makes the change goes here.

ALTER TABLE cadastro.imovel
    ADD CONSTRAINT fk_convenio_imovel FOREIGN KEY (imov_idparametrosconvenio) REFERENCES arrecadacao.arrecadador_contrato_convenio (arcc_id);

-- //@UNDO
-- SQL to undo the change goes here.

ALTER TABLE cadastro.imovel DROP CONSTRAINT fk_convenio_imovel;
