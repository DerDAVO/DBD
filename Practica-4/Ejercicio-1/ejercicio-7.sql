/*Listar nroTicket, total, fecha, hora y DNI del cliente, de aquellas facturas donde se haya
comprado el producto ‘prod38’ o la factura tenga fecha de 2019.
*/
select f.nroTicket,f.total,f.fecha,f.hora,f.dni
from  Cliente c 
    INNER JOIN Facturas f ON (c.idCliente=f.idCliente)
    INNER JOIN Detalle d ON (d.nroTicket=f.nroTicket)
    INNER JOIN Producto p ON (p.idProducto=d.idProducto)
where p.nombre='prod38' OR f.fecha between f.fecha >= 1/2/2019 and fecha 31/12/2019