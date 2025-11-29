-- ALUNO
INSERT INTO aluno VALUES
(1, 'Ana Silva', '12345678901', '99999-1111', '2005-03-12'),
(2, 'Bruno Santos', '98765432100', '98888-2222', '2000-07-25'),
(3, 'Carla Souza', '11122233344', '97777-3333', '1998-11-10');

-- PROFESSOR
INSERT INTO professor VALUES
(1, 'Marcos Lima', 'Ballet', '99999-4444'),
(2, 'Juliana Rocha', 'Hip Hop', '98888-5555');

-- Turma
 INSERT INTO turma VALUES
(1, 'Ballet Infantil', 'Ballet', '14:00', 1),
(2, 'Hip Hop Teens', 'Hip Hop', '16:00', 2);

-- MATRÍCULA
INSERT INTO matricula VALUES
(1, '2025-01-10', 1, 1),
(2, '2025-01-12', 2, 1),
(3, '2025-01-15', 3, 2);

-- PRESENÇA
INSERT INTO presenca VALUES
(1, '2025-02-01', 'Presente', 1),
(2, '2025-02-01', 'Ausente', 2),
(3, '2025-02-01', 'Presente', 3);

-- PAGAMENTO
INSERT INTO pagamento VALUES
(1, '2025-02-05', 120.00, 'Cartão', 1),
(2, '2025-02-07', 120.00, 'Pix', 2),
(3, '2025-02-08', 150.00, 'Dinheiro', 3);
