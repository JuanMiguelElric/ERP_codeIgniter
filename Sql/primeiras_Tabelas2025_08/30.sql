CREATE TABLE funcao (
  id_funcao INT UNSIGNED NOT NULL AUTO_INCREMENT,
  nome_funcao VARCHAR(255) NOT NULL,
  carga_horaria TINYINT UNSIGNED,
  PRIMARY KEY (id_funcao),
  funcao_status  INT NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE funcionario (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  nome VARCHAR(255) NOT NULL,
  cpf VARCHAR(255),
  sobrenome VARCHAR(255) NOT NULL,
  email VARCHAR(255),
  data_de_nascimento DATE,
  data_de_admissao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE grupo_de_funcionarios (
  id_funcionario INT UNSIGNED NOT NULL,
  id_funcao INT UNSIGNED NOT NULL,
  data_de_adicao DATE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE funcoes_sistema(
    id_funcoes INT UNSIGNED NOT NULL AUTO_INCREMENT,
    nome varchar(255),
    menu varchar(255)
) ENGINE= InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE usuario(
    id_usuario INT UNSIGNED NOT NULL AUTO_INCREMENT,
    identificacao_usuario varchar(65),
    usuario_senha varchar(255),
    id_funcoes_sistema INT NOT NULL,
    id_funcionario INT NOT NULL,
)ENGINE= InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE log_usuario_access(
    id_log_usuario INT UNSIGNED NOT NULL AUTO_INCREMENT,
    usuario_id INT NOT NULL,
    data_hora_acesso TIMESTAMP,
    situacao INT NOT NULL DEFAULT 1
)ENGINE= InnoDB DEFAULT CHARSET=utf8mb4;