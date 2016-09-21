-- // atualiza urls do desempenho para nao ocorrer erro no Gsan
-- Migration SQL that makes the change goes here.

update seguranca.funcionalidade set fncd_dscaminhourl = url where fncd_id in (16032, 16033, 16034, 16035, 16036, 16037)

-- //@UNDO
-- SQL to undo the change goes here.

update seguranca.funcionalidade set fncd_dscaminhourl = null where fncd_id in (16032, 16033, 16034, 16035, 16036, 16037)
