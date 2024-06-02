/*Listar nroTicket, total, fecha, hora para las facturas del cliente ´Jorge Pérez´ donde no
haya comprado el producto ´Z´.
*/
select  f.nroTicket,f.total,f.fecha,f.hora
from    Cliente c 
    INNER JOIN Facturas f ON (c.idCliente=f.idCliente)
    INNER JOIN Detalle d ON (d.nroTicket=f.nroTicket)
    INNER JOIN Producto p ON (p.idProducto=d.idProducto)
where   c.nombre = 'Jose' AND c.apellido = 'Perez' AND p.nombre <> 'Z'

