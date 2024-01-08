
USE db_empresa;

CREATE TABLE IF NOT EXISTS tb_rh (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    cargo VARCHAR(50) NOT NULL,
    salario DECIMAL(10,2) NOT NULL,
    departamento VARCHAR(50),
    data_admissao DATE,
    PRIMARY KEY (id)
    );


INSERT INTO colaboradores (nome, cargo, salario, departamento, data_admissao) VALUES
('João Silva', 'Analista de RH', 2500.00, 'Recursos Humanos', '2021-01-15'),
('Maria Oliveira', 'Programador', 1800.00, 'TI', '2020-05-20'),
('Carlos Santos', 'Gerente de Vendas', 3000.00, 'Vendas', '2019-09-10'),
('Ana Souza', 'Analista Financeiro', 2200.00, 'Financeiro', '2020-12-01'),
('Pedro Pereira', 'Assistente Administrativo', 1900.00, 'Administração', '2021-03-25');


SELECT * FROM colaboradores WHERE salario > 2000;


SELECT * FROM colaboradores WHERE salario < 2000;


UPDATE colaboradores SET salario = 2800.00 WHERE nome = 'João Silva';