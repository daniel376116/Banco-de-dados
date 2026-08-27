-- 📝 10 Exercícios de Consulta SQL (INNER JOIN)

-- ---
-- Nível Fácil (1-8)

-- 1. Exibir o nome e o e-mail de todos os usuários que têm alguma meta registrada, juntamente com o tipo de meta associado.
	select nome, email, tipo_meta
    from usuarios as u
    inner join metas as m
    on u.id_usuario = m.id_usuario
    where tipo_meta is not null;
    
-- 2. Exibir o nome do usuário e a data de registro de todas as atividades, juntamente com o tipo de exercício realizado.
	select nome, data_registro, tipo_exercicio
    from usuarios as u
    inner join atividades as a
    on u.id_usuario = a.id_usuario;
    
-- 3. Listar o nome do usuário e o valor alvo de todas as metas que têm o status de 'Ativa'.
	select nome, valor_alvo
    from usuarios as u
    inner join metas as m
    on u.id_usuario = m.id_usuario
    where status = 'Ativa';
    
-- 4. Exibir o tipo de exercício e a duração em minutos para todas as atividades que foram registradas pelo usuário de nome 'Ana Silva'.
	select tipo_exercicio, duracao_minutos
    from atividades as a
    inner join usuarios as u
    on a.id_usuario = u.id_usuario
    where nome = 'ana silva';
    
-- 5. Listar o nome de todos os usuários que têm metas do tipo 'Peso', exibindo também o id_meta correspondente.
	select nome, id_meta
    from usuarios as u
    inner join metas as m
    on u.id_usuario = m.id_usuario
    where tipo_meta = 'peso';
    
-- 6. Exibir o nome do usuário e a quantidade de calorias queimadas em todas as atividades de 'Caminhada'.
	select nome, calorias_queimadas
    from usuarios as u
    inner join atividades as a
    on u.id_usuario = a.id_usuario
    where tipo_exercicio = 'caminhada';
    
-- 7. Listar o nome do usuário e o tipo de meta para todas as metas que foram concluídas (status = 'Concluida').
	select nome, tipo_meta, status
    from usuarios as u
    inner join metas as m
    on u.id_usuario = m.id_usuario
    where status = 'Concluida';
    
-- 8. Exibir o nome e a cidade do usuário que registrou a atividade com o id_atividade igual a 105.
	select nome,cidade
    from usuarios as u
    inner join atividades as a
    on u.id_usuario = a.id_usuario
    where id_atividade = 105;
    
-- Nível Médio (9-10)

-- 9. Listar o nome do usuário e a média de calorias queimadas por ele, mas apenas para os usuários que têm metas ativas.
	select nome, round(avg(calorias_queimadas), 2)
    from usuarios as u
    inner join atividades as a
    on u.id_usuario = a.id_usuario
    inner join metas as m
    on a.id_usuario = m.id_usuario
    where status = 'Ativa'
    group by u.nome;
    
    select nome, status
    from usuarios as u
    inner join metas as m
    on u.id_usuario = m.id_usuario;
    
-- 10. Exibir o nome do usuário e a soma total da duração em minutos de suas atividades. O resultado deve incluir somente usuários que têm registrado atividades e metas de 'Distancia'.
	select nome, sum(duracao_minutos)
    from usuarios as u
    inner join atividades as a
    on u.id_usuario = a.id_usuario
    inner join metas as m
    on a.id_usuario = m.id_usuario
    where tipo_meta = 'distancia'
    group by nome;
    
    select nome, duracao_minutos
    from usuarios as u
    inner join atividades as a
    on u.id_usuario = a.id_usuario;
    
    select * from atividades;