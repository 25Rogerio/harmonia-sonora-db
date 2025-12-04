-- Consulta 1: Alunos com mensalidade pendente
SELECT a.nome AS aluno, m.mes_referencia, m.valor, m.data_vencimento
FROM Aluno a
JOIN Mensalidade m ON a.id_aluno = m.id_aluno
WHERE m.status = 'pendente'
ORDER BY m.data_vencimento;

-- Consulta 2: Frequência dos alunos em turma de Violino
SELECT a.nome, f.data_aula, f.status
FROM Aluno a
JOIN Matricula mat ON a.id_aluno = mat.id_aluno
JOIN Frequencia f ON mat.id_matricula = f.id_matricula
JOIN Turma t ON mat.id_turma = t.id_turma
JOIN Curso c ON t.id_curso = c.id_curso
WHERE c.nome = 'Violino Básico'
ORDER BY f.data_aula;

-- Consulta 3: Turmas com professores e horários
SELECT 
    c.nome AS curso,
    p.nome AS professor,
    s.nome AS sala,
    CASE t.dia_semana
        WHEN 2 THEN 'Terça'
        WHEN 4 THEN 'Quinta'
    END AS dia,
    t.hora_inicio, t.hora_fim
FROM Turma t
JOIN Curso c ON t.id_curso = c.id_curso
JOIN Professor p ON t.id_professor = p.id_professor
JOIN Sala s ON t.id_sala = s.id_sala;

-- Consulta 4: Total arrecadado por mês
SELECT mes_referencia, SUM(valor) AS total
FROM Mensalidade
WHERE status = 'pago'
GROUP BY mes_referencia
ORDER BY mes_referencia;