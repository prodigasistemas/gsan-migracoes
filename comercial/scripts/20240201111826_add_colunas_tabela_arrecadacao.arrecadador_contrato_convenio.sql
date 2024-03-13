-- // add_colunas_tabela_arrecadacao.arrecadador_contrato_convenio
-- Migration SQL that makes the change goes here.

ALTER TABLE arrecadacao.arrecadador_contrato_convenio 
ADD COLUMN "arcc_acaoposvencimentotitulo" varchar(14); 

ALTER TABLE arrecadacao.arrecadador_contrato_convenio 
ADD COLUMN "arcc_nndiasacaoposvencimentofatura" int4;

ALTER TABLE arrecadacao.arrecadador_contrato_convenio 
ADD COLUMN "arcc_nndiasacaoposvencimentoparcelamento" int4;

ALTER TABLE arrecadacao.arrecadador_contrato_convenio 
ADD COLUMN "arcc_icparcelamento" int2;

ALTER TABLE arrecadacao.arrecadador_contrato_convenio 
ADD COLUMN "arcc_idarrecadadorcontratoconvenioparcelamento" int2;

ALTER TABLE arrecadacao.arrecadador_contrato_convenio 
ADD COLUMN "arcc_nnnsaretornofichacomp" int4;

ALTER TABLE arrecadacao.arrecadador_contrato_convenio 
ADD COLUMN "arct_id" int4;

-- //@UNDO
-- SQL to undo the change goes here.

ALTER TABLE arrecadacao.arrecadador_contrato_convenio DROP COLUMN "arcc_acaoposvencimentotitulo" ;
ALTER TABLE arrecadacao.arrecadador_contrato_convenio DROP COLUMN "arcc_nndiasacaoposvencimentofatura" ;
ALTER TABLE arrecadacao.arrecadador_contrato_convenio DROP COLUMN "arcc_nndiasacaoposvencimentoparcelamento" ;
ALTER TABLE arrecadacao.arrecadador_contrato_convenio DROP COLUMN "arcc_icparcelamento";
ALTER TABLE arrecadacao.arrecadador_contrato_convenio DROP COLUMN "arcc_idarrecadadorcontratoconvenioparcelamento";
ALTER TABLE arrecadacao.arrecadador_contrato_convenio DROP COLUMN "arcc_nnnsaretornofichacomp";
ALTER TABLE arrecadacao.arrecadador_contrato_convenio DROP COLUMN "arct_id";
