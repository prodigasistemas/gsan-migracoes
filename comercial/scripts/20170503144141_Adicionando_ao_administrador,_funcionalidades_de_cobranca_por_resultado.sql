-- // Adicionando ao administrador, funcionalidades de cobranca por resultado
-- Migration SQL that makes the change goes here.

update seguranca.funcionalidade 
set fncd_dscaminhomenu = 'Gsan/Cobranca/Cobranca por Resultado' , fncg_id = 141
where fncd_id = 1244;

insert into seguranca.grupo_func_operacao values (1, 1551, 1244);
-- //@UNDO
-- SQL to undo the change goes here.


