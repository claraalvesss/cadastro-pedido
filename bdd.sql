CREATE DATABASE lanchonete;

USE lanchonete;

CREATE TABLE funcionarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cargo ENUM('Atendente', 'Cozinheiro', 'Gerente') NOT NULL
);

CREATE TABLE pedidos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    descricao TEXT NOT NULL,
    responsavel_id INT,
    status ENUM('A Fazer', 'Fazendo', 'Pronto para Entrega') NOT NULL,
    FOREIGN KEY (responsavel_id) REFERENCES funcionarios(id)
);
