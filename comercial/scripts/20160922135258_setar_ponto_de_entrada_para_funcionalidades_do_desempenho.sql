-- // setar ponto de entrada para funcionalidades do desempenho
-- Migration SQL that makes the change goes here.

update seguranca.funcionalidade set fncd_icpontoentrada = 1 where fncd_id = 16032;
update seguranca.funcionalidade set fncd_icpontoentrada = 1 where fncd_id = 16033;
update seguranca.funcionalidade set fncd_icpontoentrada = 1 where fncd_id = 16034;
update seguranca.funcionalidade set fncd_icpontoentrada = 1 where fncd_id = 16035;
update seguranca.funcionalidade set fncd_icpontoentrada = 1 where fncd_id = 16036;
update seguranca.funcionalidade set fncd_icpontoentrada = 1 where fncd_id = 16037;


-- //@UNDO
-- SQL to undo the change goes here.


