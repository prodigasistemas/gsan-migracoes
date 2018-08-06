-- // Funcionalidade recadastramento
-- Migration SQL that makes the change goes here.

/**
** FUNCIONALIDADE
**/
INSERT INTO seguranca.funcionalidade_categoria (fncg_id,
                                                fncg_dsfuncionalidadecategoria,
                                                fncg_nnordem,
                                                fncg_idsuperior,
                                                modu_id,
                                                fncg_icuso,
                                                fncg_tmultimaalteracao) 
VALUES (nextval('seguranca.seq_funcionalidade_categoria'), 
        'Recadastramento', -- ??
         13, --fncg_nnordem
         null,
         13,
         1, -- ?
         NOW());

/**
** FUNCIONALIDADE
**/
INSERT INTO seguranca.funcionalidade(
            fncd_id, 
            modu_id,
            fncd_dsfuncionalidade,
            fncd_tmultimaalteracao,
            fncd_dscaminhomenu,
            fncd_dscaminhourl,
            fncd_icpontoentrada,
            fncd_dsabreviado,
            fncd_nnordemmenu,
            fncd_icnovajanela,
            fncd_icolap,
            fncg_id,
            url)
VALUES (nextval('seguranca.seq_funcionalidade'),
        13,
        'Recadastramento',
        now(),
        null,
        'https://desempenho.cosanpa.pa.gov.br/recadastramentos',
        2, -- ?
        'Recad',
        0, -- POSICAO DO LINK DO MENU (ORDEM)
        2, -- TENHO DUVIDAS, MAS ESSE NAO PRECISA ABRIR EM OUTRA JANELA
        2, -- ?
        145,
        'https://desempenho.cosanpa.pa.gov.br/recadastramentos');


/**
** OPERACAO
**/
INSERT INTO seguranca.operacao(
            oper_id,
            fncd_id,
            oper_dsoperacao,
            oper_dsabreviado,
            oper_dscaminhourl,
            oper_tmultimaalteracao,
            oper_idoperacaopesquisa,
            tbco_id,
            optp_id,
            tbco_idargumento,
            oper_icregistratransacao)
VALUES (select nextval('seguranca.seq_operacao'),
        max(fncd_id),
        'Recadastramento',
        'Recad',
        null,
        now(),
        null,
        null,
        null, --?
        null,
        2
         from seguranca.funcionalidade where fncd_dsfuncionalidade like 'Recadastramento',
        );


/**
** GRUPO FUNCIONALIDADE OPERACAO
**/
INSERT INTO seguranca.grupo_func_operacao(grup_id,
                                          oper_id,
                                          fncd_id,
                                          gfop_tmultimaalteracao)
                                  VALUES (1, -- ADMIN
                                          select oper_id from seguranca.operacao where oper_dsoperacao like 'Recadastramento',
                                          select fncd_id from seguranca.funcionalidade where fncd_dsfuncionalidade like 'Recadastramento',
                                          now());

INSERT INTO seguranca.grupo_func_operacao(grup_id,
                                          oper_id,
                                          fncd_id,
                                          gfop_tmultimaalteracao)
                                  VALUES (73, -- CADASTRO PERFORMANCE
                                          select oper_id from seguranca.operacao where oper_dsoperacao like 'Recadastramento',
                                          select fncd_id from seguranca.funcionalidade where fncd_dsfuncionalidade like 'Recadastramento',
                                          now());

-- //@UNDO
-- SQL to undo the change goes here.


