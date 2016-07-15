-- // alteracao_pastas_recadastramento_cobranca
-- Migration SQL that makes the change goes here.

update atualizacaocadastral.imagem_retorno set imgr_pathimagem =  'recadastramento' || imgr_pathimagem;

update atualizacaocadastral.imagem_retorno
set imgr_pathimagem = substring(imgr_pathimagem from 0 for position('images' in imgr_pathimagem) - 0) 
 || 'imagem_retorno'
 || substring(imgr_pathimagem from position('images' in imgr_pathimagem) + 6);

 update cadastro.imovel_imagem
set imim_caminhoimagem =  'recadastramento' || imim_caminhoimagem;

-- //@UNDO
-- SQL to undo the change goes here.

update atualizacaocadastral.imagem_retorno
set imgr_pathimagem = '/images' || substring(imgr_pathimagem from position('imagem_retorno' in imgr_pathimagem) + 14);

update cadastro.imovel_imagem
set imim_caminhoimagem =  substring(imim_caminhoimagem from position('/imovel_imagem' in imim_caminhoimagem));
