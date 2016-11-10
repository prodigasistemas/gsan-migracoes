-- // adicionar ligacao agua situacao id na tabela contrato medicao abrangencia historico
-- Migration SQL that makes the change goes here.
alter table desempenho.contrato_medicao_abrangencia_historico
  add column last_id integer;

COMMENT ON COLUMN desempenho.contrato_medicao_abrangencia_historico.last_id  IS 'id de relacionamento com Ligacao Agua Situacao do imovel';

ALTER TABLE desempenho.contrato_medicao_abrangencia_historico
ADD CONSTRAINT fk3_contrato_medicao_abrangencia_historico FOREIGN KEY (last_id)
      REFERENCES atendimentopublico.ligacao_agua_situacao (last_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT

-- //@UNDO
-- SQL to undo the change goes here.
alter table desempenho.contrato_medicao_abrangencia_historico
  drop column last_id;


