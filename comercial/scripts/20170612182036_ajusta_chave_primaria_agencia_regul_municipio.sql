-- // ajusta chave primaria agencia_regul_municipio
-- Migration SQL that makes the change goes here.
CREATE SEQUENCE atendimentopublico.seq_agencia_regul_municipio
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 6
  CACHE 1;
ALTER TABLE                   atendimentopublico.seq_agencia_regul_municipio OWNER TO gsan_admin;
GRANT ALL ON TABLE            atendimentopublico.seq_agencia_regul_municipio TO gsan_admin;
GRANT SELECT, UPDATE ON TABLE atendimentopublico.seq_agencia_regul_municipio TO role_aplic;
GRANT SELECT ON TABLE         atendimentopublico.seq_agencia_regul_municipio TO role_users;

DELETE from atendimentopublico.agencia_regul_municipio;

ALTER TABLE atendimentopublico.agencia_regul_municipio ADD column armu_id INTEGER NOT NULL;
ALTER TABLE atendimentopublico.agencia_regul_municipio DROP CONSTRAINT agencia_regul_municipio_pkey;
ALTER TABLE atendimentopublico.agencia_regul_municipio ADD PRIMARY KEY (armu_id);-- USING INDEX agencia_regul_municipio_pkey;


-- //@UNDO
-- SQL to undo the change goes here.
ALTER TABLE atendimentopublico.agencia_regul_municipio DROP column armu_id;
ALTER TABLE atendimentopublico.agencia_regul_municipio ADD PRIMARY KEY (areg_id);
INSERT INTO atendimentopublico.agencia_regul_municipio(areg_id,muni_id,armu_tmultimaalteracao) VALUES (6,33,now());
DROP SEQUENCE atendimentopublico.seq_agencia_regul_municipio;