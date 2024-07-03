
    --Cliente(idCliente, nombre, apellido, DNI, telefono, direccion)
    --Factura (nroTicket, total, fecha, hora,idCliente (fk))
    --Detalle(nroTicket, idProducto, cantidad, preciounitario)
    --Producto(idProducto, descripcion, precio, nombreP, stock)



-- 1)Listar datos personales de clientes cuyo apellido comience con el string ‘Pe’. Ordenar por DNI
select nombre,apellido,DNI,direccion,telefono
from Cliente
where (nombre Like 'Pe%')



-- 2)Listar nombre, apellido, DNI, teléfono y dirección de clientes que realizaron compras
-- solamente durante 2017.
Select c.nombre,c.apellido,c.telefono,c.DNI,c.direccion
from Cliente c
where  c.idCliente IN (
    select f.idCliente
    from Factura f 
    where f.fecha > '1-1-2017' and f.facha <'31-12-2017' 
) AND NOT IN (
    select c.idCliente
    from Factura f
    where f.fecha < '1-1-2017' or f.facha > '31-12-2017'
)


Select c.nombre,c.apellido,c.telefono,c.DNI,c.direccion
from Cliente c INNER JOIN Factura f ON (f.idCliente=c.idCliente)
where  (f.fecha > '1-1-2017' and f.facha <'31-12-2017') and (f.idCliente NOT IN (
    select c.idCliente
    from Factura f
    where f.fecha < '1-1-2017' or f.facha > '31-12-2017'
))


