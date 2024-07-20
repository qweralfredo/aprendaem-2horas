select * from ocorrencia;

select * from fator_contribuinte fc ;

select * from aeronave a ;

select * from ocorrencia_tipo ot  ;

select * from recomendacao r ;


 
 
select 
o.codigo_ocorrencia,
DENSE_RANK()  over ( order by ot.ocorrencia_tipo asc ) as codigo_ocorrencia_tipo,
ot.ocorrencia_tipo ,
DENSE_RANK()  over ( order by ot.ocorrencia_tipo_categoria,ot.taxonomia_tipo_icao  asc ) as codigo_ocorrencia_tipo_categoria,
ot.ocorrencia_tipo_categoria,
ot.taxonomia_tipo_icao,
dense_rank () over (order by o.ocorrencia_uf) as codigo_uf,
o.ocorrencia_uf ,
dense_rank () over (order by o.ocorrencia_cidade) as codigo_cidade,
o.ocorrencia_cidade,
dense_rank () over (order by o.ocorrencia_pais) as codigo_pais,
o.ocorrencia_pais,
dense_rank () over (order by o.ocorrencia_aerodromo) as codigo_aerodromo,
o.ocorrencia_aerodromo,
o.ocorrencia_dia,
o.ocorrencia_hora, 
o.ocorrencia_cidade,
o.ocorrencia_uf,
o.ocorrencia_pais,
o.ocorrencia_aerodromo,
o.ocorrencia_saida_pista
from ocorrencia o 
left join ocorrencia_tipo ot on o.codigo_ocorrencia1 = ot.codigo_ocorrencia1
left join aeronave a on o.codigo_ocorrencia2 = a.codigo_ocorrencia2
left join fator_contribuinte fc on o.codigo_ocorrencia3 = fc.codigo_ocorrencia3
left join recomendacao r on o.codigo_ocorrencia4 = r.codigo_ocorrencia4  






--fato
	--calendario
		--hora
		--minuto
		--dia
		--mes
		--ano
	--ocorrencia
		
	

--dimensao	
	--ocorrencia
		--classificacao
		--cidade
		--uf
		--pais
		--aerodromo
		--investigacao_status
		--investigacao_aeronave_liberada
		--divulgacao_relatorio_publicado
		--ocorrencia_saida_pista

	--ocorrencia_tipo (ocorrencia_tipo.ocorrencia_tipo, taxonomia_tipo_icao)
	--ocorrencia_categoria (ocorrencia_tipo.ocorrencia_categoria, taxonomia_tipo_icao)

	--aeronave
		--tipo_veiculo
		--fabricante
		--modelo
		--tipo_icao
		--motor_tipo
		--motor_quantidade
		--pmd
		--assentos
		--ano_fabricacao
		--pais_fabricante
		--pais_registro
		--registro_categoria
		--registro_segmento
		--voo_origem
		--voo_destino
		--fase_operacao
		--tipo_operacao
		--nivel_dano
	--fator
		--fator_contribuinte
		--fator_aspecto
		--fator_condicionamento
		--fator_area
		
		
	--recomendacao_destino (recomendacao.recomendacao_destinatario, recomendacao.recomendacao_conteudo)
	--recomendacao_sigla (recomendacao.recomendacao_sigla)



--criar chaves nas dimensoes, e atualizar os fatos com as referencias
--trocar valores nulos com N/A ou Unknow 


	


