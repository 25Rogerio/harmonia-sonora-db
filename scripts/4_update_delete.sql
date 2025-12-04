-- UPDATE 1: Registrar pagamento
UPDATE Mensalidade
SET data_pagamento = '2025-04-12', status = 'pago'
WHERE id_aluno = 1 AND mes_referencia = '2025-04-01';

-- UPDATE 2: Trancar matrícula
UPDATE Matricula
SET status = 'trancada'
WHERE id_aluno = 2 AND id_turma = 2;

-- UPDATE 3: Corrigir e-mail
UPDATE Aluno
SET email = 'mariana.nova@email.com'
WHERE id_aluno = 2;

-- DELETE 1: Remover frequência inválida (exemplo)
DELETE FROM Frequencia WHERE id_frequencia = 999;

-- DELETE 2: Remover mensalidade de aluno inexistente
DELETE FROM Mensalidade WHERE id_aluno = 99;

-- DELETE 3: Limpar matrícula cancelada
DELETE FROM Matricula WHERE status = 'cancelada';