select p.nombre, p.stock,p.dexcripcion,p.precio
from Productos p
where p.idProducto NOT IN (
    select p.idProducto
    from Cliente c INNER JOIN Facturas f ON (c.IdCliente = f.IdCliente)
    INNER JOIN Detalle d ON (f.nroTicket=d.nroTicket)
    INNER JOIN Productos p (p.idProducto = d.idProducto)
    where (c.telefono LIKE '221%')
)
ORDER BY p.nombre,p.idProducto