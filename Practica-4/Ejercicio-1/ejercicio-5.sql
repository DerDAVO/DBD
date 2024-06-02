select p.nombre,p.precio,p.stock,p.descripcion sum(d.cantidad) AS cantidad
from  Facturas f INNER JOIN Detalle d ON (f.nroTicket=d.nroTicket)
    INNER JOIN Productos p (p.idProducto = d.idProducto)
group by p.nombre,p.idProducto,p.descripcion,p.precio
/*Pense poner el count (*) en ves del sum 
Pero de esa forma solo se informaria enc cuantas compras estuvo
y no cuantas veces se vendio*/