-- // Criando funcionalidade - comunicado alto consumo
-- Migration SQL that makes the change goes here.

insert into seguranca.operacao values 
  (15060,241,'Consultar Comunicados Alto Consumo','ComAC','exibirComunicadoAltoConsumoPopupAction.do',now(),null,null,1,null,2);


-- //@UNDO
-- SQL to undo the change goes here.

delete from seguranca.operacao where oper_id = 15060;


