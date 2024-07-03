select nombre, apellido, direccion ...
from cliente c
where not exists (
--Para todos
  select *
  from agencia a
  where not exists (
         select *
         from viaje v
         where (c.dni=v.dni) and (a.razon_social = v.razon_social)
))