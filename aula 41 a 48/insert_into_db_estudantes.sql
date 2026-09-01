-- 1. ALUNO (15 registros)
INSERT INTO aluno (nome) VALUES 
('João Silva Neto'), ('Maria Eduarda Santos'), ('Pedro Henrique Oliveira'),
('Ana Clara Costa'), ('Lucas Gabriel Souza'), ('Beatriz Ribeiro Lima'),
('Gabriel Alves Pereira'), ('Julia Fernandes Carvalho'), ('Matheus Rocha Melo'),
('Laura Martins Gomes'), ('Thiago Augusto Barbosa'), ('Amanda Vieira Rocha'),
('Felipe Nascimento Castro'), ('Larissa Freitas Ribeiro'), ('Gustavo Henrique Lima');

-- 2. PROFESSOR (8 registros)
INSERT INTO professor (nome, cpf) VALUES 
('Carlos Alberto Souza', '12345678901'),
('Ana Maria Braga Mendonça', '98765432100'),
('Ricardo Dias Azevedo', '45612378911'),
('Sandra Helena Ramos', '78945612322'),
('Marcos Vinícius Teixeira', '32165498733'),
('Patrícia Pillar Fagundes', '65498732144'),
('Roberto Carlos Albuquerque', '15975348655'),
('Eliane Giardini Fonseca', '85296374166');

-- 3. CURSO (6 registros)
INSERT INTO curso (nome, carga_horaria) VALUES 
('Análise e Desenvolvimento de Sistemas', 2400),
('Administração de Empresas', 3000),
('Ciência da Computação', 3200),
('Engenharia de Produção', 3600),
('Pedagogia', 2800),
('Logística', 1600);

-- 4. TURMA (8 registros)
INSERT INTO turma (nome, id_curso) VALUES 
('ADS-2026-1A', 1), ('ADS-2026-2B', 1),
('ADM-2026-1A', 2), ('CC-2026-1A', 3),
('ENG-2026-1A', 4), ('PED-2026-1A', 5),
('LOG-2026-1A', 6), ('ADM-2026-2B', 2);

-- 5. ALUNO_TELEFONE (15 registros)
INSERT INTO aluno_telefone (telefone, id_aluno) VALUES 
('(11) 98765-4321', 1), ('(11) 97654-3210', 2), ('(21) 96543-2109', 3),
('(21) 95432-1098', 4), ('(31) 94321-0987', 5), ('(31) 93210-9876', 6),
('(41) 92109-8765', 7), ('(41) 91098-7654', 8), ('(51) 90987-6543', 9),
('(51) 89876-5432', 10), ('(61) 88765-4321', 11), ('(61) 87654-3210', 12),
('(71) 86543-2109', 13), ('(81) 85432-1098', 14), ('(91) 84321-0987', 15);

-- 6. ALUNO_EMAIL (15 registros)
INSERT INTO aluno_email (email, id_aluno) VALUES 
('joao.silva@estudante.com.br', 1), ('maria.eduarda@estudante.com.br', 2),
('pedro.oliveira@estudante.com.br', 3), ('ana.costa@estudante.com.br', 4),
('lucas.souza@estudante.com.br', 5), ('beatriz.lima@estudante.com.br', 6),
('gabriel.pereira@estudante.com.br', 7), ('julia.carvalho@estudante.com.br', 8),
('matheus.melo@estudante.com.br', 9), ('laura.gomes@estudante.com.br', 10),
('thiago.barbosa@estudante.com.br', 11), ('amanda.rocha@estudante.com.br', 12),
('felipe.castro@estudante.com.br', 13), ('larissa.ribeiro@estudante.com.br', 14),
('gustavo.lima@estudante.com.br', 15);

-- 7. MATRICULA (15 registros)
INSERT INTO matricula (data_matricula, id_aluno, id_turma) VALUES 
('2026-01-15', 1, 1), ('2026-01-16', 2, 1), ('2026-01-17', 3, 2),
('2026-01-18', 4, 3), ('2026-01-19', 5, 4), ('2026-01-20', 6, 5),
('2026-01-21', 7, 6), ('2026-01-22', 8, 7), ('2026-01-23', 9, 8),
('2026-01-24', 10, 1), ('2026-01-25', 11, 2), ('2026-01-26', 12, 3),
('2026-01-27', 13, 4), ('2026-01-28', 14, 5), ('2026-01-29', 15, 6);

-- 8. DOCUMENTO (15 registros)
INSERT INTO documento (nome_documento, numero_documento, data_entrega, id_matricula) VALUES 
('RG', '45.123.896-X', '2026-01-15', 1), ('CPF', '123.456.789-00', '2026-01-16', 2),
('Histórico Escolar', 'HE-998822', '2026-01-17', 3), ('Certidão de Nascimento', '654321', '2026-01-18', 4),
('Título de Eleitor', '1234567890', '2026-01-19', 5), ('RG', '12.345.678-9', '2026-01-20', 6),
('Comprovante Residência', 'Eletropaulo-2026', '2026-01-21', 7), ('CPF', '987.654.321-11', '2026-01-22', 8),
('Histórico Escolar', 'HE-776655', '2026-01-23', 9), ('Certidão de Casamento', '112233', '2026-01-24', 10),
('RG', '23.456.789-0', '2026-01-25', 11), ('CPF', '456.789.123-22', '2026-01-26', 12),
('Título de Eleitor', '9876543210', '2026-01-27', 13), ('Histórico Escolar', 'HE-443322', '2026-01-28', 14),
('Comprovante Residência', 'Sabesp-2026', '2026-01-29', 15);

-- 9. PROFESSOR_TELEFONE (8 registros)
INSERT INTO professor_telefone (telefone, id_professor) VALUES 
('(11) 99999-1111', 1), ('(11) 99999-2222', 2), ('(21) 99999-3333', 3),
('(21) 99999-4444', 4), ('(31) 99999-5555', 5), ('(31) 99999-6666', 6),
('(41) 99999-7777', 7), ('(51) 99999-8888', 8);

-- 10. PROFESSOR_EMAIL (8 registros)
INSERT INTO professor_email (email, id_professor) VALUES 
('carlos.souza@professor.uniedu.edu.br', 1), ('ana.mendonca@professor.uniedu.edu.br', 2),
('ricardo.azevedo@professor.uniedu.edu.br', 3), ('sandra.ramos@professor.uniedu.edu.br', 4),
('marcos.teixeira@professor.uniedu.edu.br', 5), ('patricia.fagundes@professor.uniedu.edu.br', 6),
('roberto.albuquerque@professor.uniedu.edu.br', 7), ('eliane.fonseca@professor.uniedu.edu.br', 8);

-- 11. TURMA_PROFESSOR (12 registros)
INSERT INTO turma_professor (id_turma, id_curso, id_professor) VALUES 
(1, 1, 1), (1, 1, 2), (2, 1, 3),
(3, 2, 4), (4, 3, 5), (5, 4, 6),
(6, 5, 7), (7, 6, 8), (8, 2, 4),
(2, 1, 1), (3, 2, 5), (4, 3, 1);

-- 12. HORARIO (12 registros)
INSERT INTO horario (dia_semana, hora_inicio, hora_final, id_turma) VALUES 
('Segunda-feira', '19:00:00', '22:30:00', 1), ('Terça-feira', '19:00:00', '22:30:00', 1),
('Quarta-feira', '19:00:00', '22:30:00', 2), ('Quinta-feira', '19:00:00', '22:30:00', 2),
('Segunda-feira', '08:00:00', '11:40:00', 3), ('Quarta-feira', '08:00:00', '11:40:00', 3),
('Sábado', '08:00:00', '12:00:00', 4), ('Sábado', '13:00:00', '17:00:00', 5),
('Sexta-feira', '19:00:00', '22:30:00', 6), ('Terça-feira', '08:00:00', '11:40:00', 7),
('Quinta-feira', '08:00:00', '11:40:00', 8), ('Sexta-feira', '08:00:00', '11:40:00', 8);

-- 13. CURSO_MODALIDADE (10 registros)
INSERT INTO curso_modalidade (modalidade, id_curso) VALUES 
('Presencial', 1), ('EAD - 100% Online', 1), ('Semipresencial', 1),
('Presencial', 2), ('EAD - 100% Online', 2),
('Presencial', 3), ('Presencial', 4),
('EAD - 100% Online', 5), ('Semipresencial', 5),
('EAD - 100% Online', 6);

-- 14. DISCIPLINA (15 registros)
INSERT INTO disciplina (nome, carga_horaria) VALUES 
('Algoritmos e Lógica de Programação', 80), ('Banco de Dados I', 80),
('Engenharia de Software', 60), ('Estrutura de Dados', 80),
('Teoria Geral da Administração', 60), ('Gestão de Pessoas', 60),
('Contabilidade Geral', 80), ('Cálculo Diferencial e Integral I', 100),
('Física Mecânica', 80), ('Didática Geral', 60),
('Psicologia da Educação', 60), ('Fundamentos da Logística', 40),
('Gestão da Cadeia de Suprimentos', 80), ('Programação Web', 80),
('Sistemas Operacionais', 60);

-- 15. GRADE_CURRICULAR (20 registros)
INSERT INTO grade_curricular (id_curso, id_disciplina) VALUES 
(1, 1), (1, 2), (1, 3), (1, 4), (1, 14),
(2, 5), (2, 6), (2, 7),
(3, 1), (3, 2), (3, 4), (3, 15),
(4, 7), (4, 8), (4, 9),
(5, 10), (5, 11),
(6, 12), (6, 13), (6, 5);

-- 16. BIBLIOGRAFIA (15 registros)
INSERT INTO bibliografia (referencia, id_disciplina) VALUES 
('FORBELLONE, A. L. V.', 1), ('SILBERSCHATZ, A.', 2),
('SOMMERVILLE, I.', 3), ('TENENBAUM, A. M.', 4),
('CHIAVENATO, I.', 5), ('MARRAS, J. P.', 6),
('PULICE, J. A.', 7), ('GUIDORIZZI, H. L.', 8),
('HALLIDAY, D.', 9), ('LIBÂNEO, J. C.', 10),
('PIAGET, J.', 11), ('BALLOU, R. H.', 12),
('BOWERSOX, D. J.', 13), ('DEITEL, P. J.', 14),
('TANENBAUM, A. S.', 15);