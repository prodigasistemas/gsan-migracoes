-- // insert_grupo_func_operacao
-- Migration SQL that makes the change goes here.
INSERT INTO seguranca.grupo_func_operacao VALUES (1, 15123, 16108, now());
INSERT INTO seguranca.grupo_func_operacao VALUES (1, 15124, 16109, now());

-- //@UNDO
-- SQL to undo the change goes here.

DELETE FROM seguranca.grupo_func_operacao WHERE oper_id in (15123,15124);
