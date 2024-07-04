/*
Técnico (codTec, nombre, especialidad) // técnicos
Repuesto (codRep, nombre, stock, precio) // repuestos
RepuestoReparacion (nroReparac, codRep, cantidad, precio) //repuestos utilizados en reparaciones.
Reparación (nroReparac, codTec, precio_total, fecha) //reparaciones realizadas.

*/

-- Listar todos los repuestos, informando el nombre, stock y precio. Ordenar el
-- resultado por precio.
SELECT r.nombre,r.stock,r.precio
FROM Repuesto r
ORDER BY r.precio,r.nombre,r.stock
