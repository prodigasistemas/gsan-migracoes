-- // Tarifa por localidade
-- Migration SQL that makes the change goes here.


ALTER TABLE cadastro.localidade ADD COLUMN cstf_id integer;

ALTER TABLE cadastro.localidade ADD CONSTRAINT fk11_consumo_tarifa_id FOREIGN KEY (cstf_id)
      REFERENCES faturamento.consumo_tarifa (cstf_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT;

-- //@UNDO
-- SQL to undo the change goes here.

ALTER TABLE cadastro.localidade DROP COLUMN cstf_id;


