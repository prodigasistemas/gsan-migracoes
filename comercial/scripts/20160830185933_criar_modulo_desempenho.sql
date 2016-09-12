-- // criar modulo desempenho
-- Migration SQL that makes the change goes here.

INSERT INTO seguranca.modulo VALUES (13, 'DESEMPENHO', 'DESEMPENHO', '2016-08-30 16:17:02.933979', 13);

-- //@UNDO
-- SQL to undo the change goes here.

delete from seguranca.modulo where modu_id = 13;
