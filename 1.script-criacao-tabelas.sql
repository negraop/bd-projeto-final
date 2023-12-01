CREATE TABLE tb_dentista (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(200) NOT NULL,
  cpf VARCHAR(11) NOT NULL,
  data_nasc DATE,
  sexo VARCHAR(50),
  telefone VARCHAR(11),
  uf_cro VARCHAR(2) NOT NULL,
  num_cro INT NOT NULL,
  especializacao VARCHAR(100)
);

CREATE TABLE tb_paciente (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(200) NOT NULL,
  cpf VARCHAR(11) NOT NULL,
  data_nasc date,
  sexo VARCHAR(50),
  telefone VARCHAR(11) NOT NULL
);

CREATE TABLE tb_consulta (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  descricao VARCHAR(300),
  preco DECIMAL(10,2) NOT NULL,
  dt_consulta DATETIME NOT NULL,
  compareceu BOOLEAN NOT NULL,
  status_pgto VARCHAR(50),
  id_dentista INT UNSIGNED NOT NULL,
  id_paciente INT UNSIGNED NOT NULL,
  CONSTRAINT fk_consulta_dentista FOREIGN KEY (id_dentista) REFERENCES tb_dentista (id),
  CONSTRAINT fk_consulta_paciente FOREIGN KEY (id_paciente) REFERENCES tb_paciente (id)
);

CREATE TABLE tb_endereco (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  tipo VARCHAR(100) NOT NULL,
  logradouro VARCHAR(255) NOT NULL,
  numero INT NOT NULL,
  complemento VARCHAR(100),
  bairro VARCHAR(100) NOT NULL,
  cidade VARCHAR(100) NOT NULL,
  uf VARCHAR(2) NOT NULL,
  cep INT NOT NULL,
  id_dentista INT UNSIGNED,
  id_paciente INT UNSIGNED,
  CONSTRAINT fk_endereco_dentista FOREIGN KEY (id_dentista) REFERENCES tb_dentista (id),
  CONSTRAINT fk_endereco_paciente FOREIGN KEY (id_paciente) REFERENCES tb_paciente (id)
);

CREATE TABLE tb_plano_tratamento (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  descricao VARCHAR(500) NOT NULL,
  id_dentista INT UNSIGNED NOT NULL,
  id_paciente INT UNSIGNED NOT NULL,
  CONSTRAINT fk_tratamento_dentista FOREIGN KEY (id_dentista) REFERENCES tb_dentista (id),
  CONSTRAINT fk_tratamento_paciente FOREIGN KEY (id_paciente) REFERENCES tb_paciente (id)
);

CREATE TABLE tb_anamnese (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  id_dentista INT UNSIGNED NOT NULL,
  id_paciente INT UNSIGNED NOT NULL,
  pergunta_1 VARCHAR(255),
  pergunta_2 VARCHAR(255),
  pergunta_3 VARCHAR(255),
  pergunta_etc VARCHAR(255),
  pergunta_20 VARCHAR(255),
  dente_1 VARCHAR(255),
  dente_2 VARCHAR(255),
  dente_3 VARCHAR(255),
  dente_etc VARCHAR(255),
  dente_32 VARCHAR(255),
  CONSTRAINT fk_anamnese_dentista FOREIGN KEY (id_dentista) REFERENCES tb_dentista (id),
  CONSTRAINT fk_anamnese_paciente FOREIGN KEY (id_paciente) REFERENCES tb_paciente (id)
);
