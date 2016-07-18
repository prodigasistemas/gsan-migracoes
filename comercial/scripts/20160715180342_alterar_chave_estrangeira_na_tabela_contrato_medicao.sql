-- // alterar chave estrangeira na tabela contrato_medicao
-- Migration SQL that makes the change goes here.

ALTER TABLE cadastro.contrato_medicao DROP CONSTRAINT fk1_contrato_medicao;

ALTER TABLE cadastro.contrato_medicao
ADD CONSTRAINT fk1_contrato_medicao FOREIGN KEY (empr_id)
      REFERENCES cadastro.empresa (empr_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT

-- //@UNDO
-- SQL to undo the change goes here.


