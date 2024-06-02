select p.nombre ,p.stock 
from Productos p
where p.idProducto 
NOT IN( select p.idProducto
        from Cliente c INNER JOIN Factura f on (f.IdCliente=c.IdCliente )
        INNER JOIN Detalle d on (d.nroTicket = f.nroTicket )
        INNER JOIN Productos p  on(d.idProducto=p.idProducto)
        where c.apellido='Garcia'
)AND p.idProducto 
IN( select p.idProducto
    from Cliente c INNER JOIN Factura f on (f.IdCliente=c.IdCliente )
    INNER JOIN Detalle d on (d.nroTicket = f.nroTicket )
    INNER JOIN Productos p  on(d.idProducto=p.idProducto)
    where c.dni = 44000000
)

