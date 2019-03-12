-- // Add botao de fiscalizacao - recadastramento
-- Migration SQL that makes the change goes here.

/*
insert into seguranca.operacao values (nextval('seguranca.seq_operacao'), 1194, 'Retornar Arquivos Imoveis A Fiscalizar Atlz Cad', 
    'RtArqImFsc', 'retornarArquivosImoveisAFiscalizarAtualizacaoCadastralAction.do', now(), null, null, 6, null, 2);

insert into seguranca.grupo_func_operacao (select 1, oper_id, 1194 from seguranca.operacao where oper_dscaminhourl like '%retornarArquivosImoveisAFiscalizarAtualizacaoCadastralAction%' );

ALTER TABLE atualizacaocadastral.imovel_controle_atlz_cad ADD COLUMN icac_lote integer;
COMMENT ON COLUMN atualizacaocadastral.imovel_controle_atlz_cad.icac_lote IS 'identificacao do lote ao qual o imovel pertence';

ALTER TABLE atualizacaocadastral.imovel_controle_atlz_cad ADD COLUMN icac_tmgeracaolote timestamp without time zone;
COMMENT ON COLUMN atualizacaocadastral.imovel_controle_atlz_cad.icac_tmgeracaolote IS 'timestamp de quando foi gerado o lote';

ALTER TABLE atualizacaocadastral.imovel_controle_atlz_cad ADD COLUMN icac_tmaprovacaolote timestamp without time zone;
COMMENT ON COLUMN atualizacaocadastral.imovel_controle_atlz_cad.icac_tmaprovacaolote IS 'timestamp de quando foi aprovado o lote';
&*/

-- //@UNDO
-- SQL to undo the change goes here.

delete from  seguranca.grupo_func_operacao 
    where grup_id = 1 
    and oper_id in (select oper_id from seguranca.operacao where oper_dscaminhourl like '%retornarArquivosImoveisAFiscalizarAtualizacaoCadastralAction%')
    and fncd_id =  1194;

delete from  seguranca.operacao where oper_dscaminhourl like '%retornarArquivosImoveisAFiscalizarAtualizacaoCadastralAction%';


ALTER TABLE atualizacaocadastral.imovel_controle_atlz_cad DROP COLUMN icac_lote;

ALTER TABLE atualizacaocadastral.imovel_controle_atlz_cad DROP COLUMN icac_tmgeracaolote;

ALTER TABLE atualizacaocadastral.imovel_controle_atlz_cad DROP COLUMN icac_tmaprovacaolote;
