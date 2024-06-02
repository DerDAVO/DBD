select c.dni,c.apellido,c.dni
from Cliente c INNER JOIN Facturas f ON (c.idCliente= f.idCliente)
group by c.nombre,c.apellido,c.dni
having sum(f.total) > 10000
