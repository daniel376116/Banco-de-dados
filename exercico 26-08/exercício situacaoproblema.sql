set sql_safe_updates = 0;
# Step 1
update usuarios
set cidade = 'São Paulo'
where id_usuario = 5;

select * from usuarios where id_usuario = 5;

#  1.1
update metas
set status = 'Concluída'
where id_meta = 2;

select * from metas where id_meta = 2;

# Step 2
select u.nome, u.email, m.status
from metas as m
inner join usuarios as u
on u.id_usuario = m.id_usuario
where m.status like 'Ativa';

# 2.1
select cidade, count(cidade) as usuarios_rj
from usuarios
where cidade = 'Rio de Janeiro'
group by cidade;

select * from usuarios where cidade like '%rio de janeiro%';

# 2.3
select u.nome, m.tipo_exercicio
from usuarios as u
inner join metas as m
on m.id_usuario = u.id_usuario;
