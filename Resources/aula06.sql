
-------------------------------



update rh_funcionario 
set salario = 2500, cargo_id = 1
where rh_funcionario . id = 1


-------------------------------


select 
	salario
from
	rh_funcionario
	where nome like '%Alexandre%'
	

-------------------------------

	
update
	rh_funcionario 
set 
	salario = 5500, cargo_id = 1
where nome like 'Alexandre%'


-------------------------------


delete from rh_funcionario
where id in (2, 3)


--------------------------------



