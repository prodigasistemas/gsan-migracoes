-- // criar registro em grupo operacao funcionalidade para modulo desempenho
-- Migration SQL that makes the change goes here.

INSERT INTO seguranca.grupo_func_operacao VALUES (1, 15053, 16032, '2016-08-31 15:40:24.947956');
INSERT INTO seguranca.grupo_func_operacao VALUES (1, 15054, 16033, '2016-08-31 15:40:24.947956');
INSERT INTO seguranca.grupo_func_operacao VALUES (1, 15055, 16034, '2016-08-31 15:40:24.947956');
INSERT INTO seguranca.grupo_func_operacao VALUES (1, 15056, 16035, '2016-08-31 15:40:24.947956');
INSERT INTO seguranca.grupo_func_operacao VALUES (1, 15057, 16036, '2016-08-31 15:40:24.947956');
INSERT INTO seguranca.grupo_func_operacao VALUES (1, 15058, 16037, '2016-08-31 15:40:24.947956');

-- //@UNDO
-- SQL to undo the change goes here.

delete from seguranca.grupo_func_operacao where grup_id = 1 and oper_id = 15053 and fncd_id = 16032;
delete from seguranca.grupo_func_operacao where grup_id = 1 and oper_id = 15054 and fncd_id = 16033;
delete from seguranca.grupo_func_operacao where grup_id = 1 and oper_id = 15055 and fncd_id = 16034;
delete from seguranca.grupo_func_operacao where grup_id = 1 and oper_id = 15056 and fncd_id = 16035;
delete from seguranca.grupo_func_operacao where grup_id = 1 and oper_id = 15057 and fncd_id = 16036;
delete from seguranca.grupo_func_operacao where grup_id = 1 and oper_id = 15058 and fncd_id = 16037;
