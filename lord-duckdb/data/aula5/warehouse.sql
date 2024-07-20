CREATE TABLE Fato_Ocorrencia (
	codigo_ocorrencia INT PRIMARY KEY,
	ocorrencia_dia DATE,
	ocorrencia_hora TIME,
	ocorrencia_tipo VARCHAR(255),
	ocorrencia_cidade VARCHAR(255),
	ocorrencia_uf CHAR(2),
	ocorrencia_pais VARCHAR(255),
	ocorrencia_aerodromo VARCHAR(4),
	ocorrencia_saida_pista varchar(3),
	total_recomendacoes INT,
	total_aeronaves_envolvidas INT,
	ocorrencia_fatalidades_total INT
);

CREATE TABLE Fato_Fator_Contribuinte (
	codigo_ocorrencia INT,
	fator_nome VARCHAR(255),
	fator_aspecto VARCHAR(255),
	fator_condicionante BOOLEAN,
	fator_area VARCHAR(255),
	PRIMARY KEY (codigo_ocorrencia, fator_nome)
);

CREATE TABLE Fato_Investigacao (
	codigo_ocorrencia INT PRIMARY KEY,
	investigacao_aeronave_liberada BOOLEAN,
	investigacao_status VARCHAR(255)
);

CREATE TABLE Fato_Divulgacao (
	codigo_ocorrencia INT PRIMARY KEY,
	divulgacao_relatorio_numero VARCHAR(255),
	divulgacao_relatorio_publicado BOOLEAN,
	divulgacao_dia_publicacao DATE
);

CREATE TABLE Dimensao_Aeronave (
	codigo_aeronave INT PRIMARY KEY,
	aeronave_matricula VARCHAR(255),
	aeronave_tipo_veiculo VARCHAR(255),
	aeronave_fabricante VARCHAR(255),
	aeronave_modelo VARCHAR(255),
	aeronave_tipo_cao VARCHAR(255),
	aeronave_motor_tipo VARCHAR(255),
	aeronave_motor_quantidade INT,
	aeronave_pmd BOOLEAN,
	aeronave_pmd_categoria VARCHAR(255),
	aeronave_assentos INT,
	aeronave_ano_fabricacao int,
	aeronave_pais_fabricante VARCHAR(255),
	aeronave_pais_registro VARCHAR(255),
	aeronave_registro_categoria VARCHAR(255),
	aeronave_registro_segmento VARCHAR(255),
	aeronave_voo_origem VARCHAR(255),
	aeronave_voo_destino VARCHAR(255),
	aeronave_fase_operacao VARCHAR(255),
	aeronave_tipo_operacao VARCHAR(255)
);


