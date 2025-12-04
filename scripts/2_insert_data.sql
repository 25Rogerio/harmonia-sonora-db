-- Inserções para o banco da Escola "Harmonia Sonora"
-- Todas as tabelas respeitam o modelo lógico em 3FN

-- Responsável
INSERT INTO Responsavel (id_responsavel, nome, telefone, email) VALUES
(1, 'Ana Silva', '(11) 98765-4321', 'ana.silva@email.com'),
(2, 'Carlos Mendes', '(21) 99999-8888', 'carlos.mendes@email.com');

-- Aluno
INSERT INTO Aluno (id_aluno, nome, data_nascimento, telefone, email, id_responsavel) VALUES
(1, 'João Silva', '2010-05-12', '(11) 91234-5678', 'joao.silva@email.com', 1),
(2, 'Mariana Costa', '2009-11-30', '(21) 92345-6789', 'mariana.costa@email.com', 2),
(3, 'Lucas Almeida', '2012-03-15', '(11) 93456-7890', 'lucas.almeida@email.com', NULL);

-- Professor
INSERT INTO Professor (id_professor, nome, cpf, telefone, email, data_contratacao) VALUES
(1, 'Prof. Roberto Lima', '12345678901', '(11) 94567-8901', 'roberto.lima@harmonia.com', '2023-01-15'),
(2, 'Profa. Fernanda Rocha', '98765432109', '(21) 95678-9012', 'fernanda.rocha@harmonia.com', '2022-08-10');

-- Curso
INSERT INTO Curso (id_curso, nome, descricao_metodo) VALUES
(1, 'Violino Básico', 'Método Suzuki adaptado para crianças'),
(2, 'Teatro Infantil', 'Abordagem lúdica com foco em expressão corporal e voz');

-- Sala
INSERT INTO Sala (id_sala, nome, capacidade) VALUES
(1, 'Sala 1 - Violino', 10),
(2, 'Sala 2 - Teatro', 15);

-- Turma
INSERT INTO Turma (id_turma, id_curso, id_professor, id_sala, dia_semana, hora_inicio, hora_fim) VALUES
(1, 1, 1, 1, 2, '14:00:00', '15:00:00'),
(2, 2, 2, 2, 4, '16:00:00', '17:30:00');

-- Matrícula
INSERT INTO Matricula (id_matricula, id_aluno, id_turma, data_matricula, status) VALUES
(1, 1, 1, '2025-03-01', 'ativa'),
(2, 2, 2, '2025-03-02', 'ativa'),
(3, 3, 1, '2025-03-03', 'ativa');

-- Frequência
INSERT INTO Frequencia (id_frequencia, id_matricula, data_aula, status) VALUES
(1, 1, '2025-03-04', 'presente'),
(2, 2, '2025-03-06', 'ausente'),
(3, 3, '2025-03-04', 'presente'),
(4, 1, '2025-03-11', 'presente');

-- Mensalidade
INSERT INTO Mensalidade (id_mensalidade, id_aluno, mes_referencia, valor, data_vencimento, data_pagamento, status) VALUES
(1, 1, '2025-03-01', 180.00, '2025-03-10', '2025-03-08', 'pago'),
(2, 2, '2025-03-01', 180.00, '2025-03-10', NULL, 'pendente'),
(3, 3, '2025-04-01', 180.00, '2025-04-10', '2025-04-05', 'pago'),
(4, 1, '2025-04-01', 180.00, '2025-04-10', NULL, 'pendente');