-- 1. Listar todos os alunos
SELECT * FROM aluno;

-- 2. Listar pagamentos ordenados pelo maior valor
SELECT nome_turma, valor
FROM pagamento
JOIN matricula USING (id_matricula)
JOIN turma USING (id_turma)
ORDER BY valor DESC;

-- 3. Presenças com nome do aluno
SELECT aluno.nome, presenca.data, presenca.status
FROM presenca
JOIN matricula USING (id_matricula)
JOIN aluno USING (id_aluno);

-- 4. Turmas com professor responsável
SELECT turma.nome_turma, professor.nome AS professor
FROM turma
JOIN professor USING (id_professor);

-- 5. Listar apenas 2 alunos
SELECT * FROM aluno LIMIT 2;