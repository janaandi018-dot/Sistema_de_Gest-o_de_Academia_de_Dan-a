CREATE DATABASE sistema_de_gestão_de_academia_de_dança;
USE sistema_de_gestão_de_academia_de_dança;

-- Tabela PROFESSOR
CREATE TABLE professor (
    id_professor INT PRIMARY KEY,
    nome VARCHAR(100),
    especialidade VARCHAR(100),
    telefone VARCHAR(20)
);

-- Tabela ALUNO
CREATE TABLE aluno (
    id_aluno INT PRIMARY KEY,
    nome VARCHAR(100),
    cpf VARCHAR(11),
    telefone VARCHAR(20),
    data_nascimento DATE
);

-- Tabela TURMA (referencia professor)
CREATE TABLE turma (
    id_turma INT PRIMARY KEY,
    nome_turma VARCHAR(100),
    modalidade VARCHAR(100),
    horario VARCHAR(20),
    id_professor INT,
    FOREIGN KEY (id_professor) REFERENCES professor(id_professor)
);

-- Tabela MATRICULA (referencia aluno e turma)
CREATE TABLE matricula (
    id_matricula INT PRIMARY KEY,
    data_matricula DATE,
    id_aluno INT,
    id_turma INT,
    FOREIGN KEY (id_aluno) REFERENCES aluno(id_aluno),
    FOREIGN KEY (id_turma) REFERENCES turma(id_turma)
);

-- Tabela PRESENCA (referencia matricula)
CREATE TABLE presenca (
    id_presenca INT PRIMARY KEY,
    data DATE,
    status VARCHAR(20),
    id_matricula INT,
    FOREIGN KEY (id_matricula) REFERENCES matricula(id_matricula)
);

-- Tabela PAGAMENTO (referencia matricula)
CREATE TABLE pagamento (
    id_pagamento INT PRIMARY KEY,
    data_pagamento DATE,
    valor DECIMAL(10,2),
    forma_pagamento VARCHAR(50),
    id_matricula INT,
    FOREIGN KEY (id_matricula) REFERENCES matricula(id_matricula)
);
