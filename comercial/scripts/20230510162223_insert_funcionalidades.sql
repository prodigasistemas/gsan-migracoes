-- // insert_funcionalidades
-- Migration SQL that makes the change goes here.

INSERT INTO seguranca.funcionalidade VALUES (nextval('seguranca.seq_funcionalidade'), 7, 'Exibir Imovel Faturamento Seletivo', now(), '/Gsan', 'exibirImovelFaturamentoSeletivo.do', 2, 'ExImFatSel', 1, 2, 2, 32);
INSERT INTO seguranca.funcionalidade VALUES (nextval('seguranca.seq_funcionalidade'), 7, 'Filtrar Faturamento Imovel Seletivo', now(), '/Gsan', 'filtrarFaturamentoImovelSeletivo.do', 2, 'FilFatImSe', 1, 2, 2, 32);

-- //@UNDO
-- SQL to undo the change goes here.

DELETE from seguranca.funcionalidade where fncd_id in (16108,16109);
