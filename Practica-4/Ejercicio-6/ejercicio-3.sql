/*
Técnico (codTec, nombre, especialidad) // técnicos
Repuesto (codRep, nombre, stock, precio) // repuestos
RepuestoReparacion (nroReparac, codRep, cantidad, precio) //repuestos utilizados en reparaciones.
Reparación (nroReparac, codTec, precio_total, fecha) //reparaciones realizadas.

*/
-- Listar el nombre, especialidad de técnicos que no participaron en ninguna
-- reparación. Ordenar por nombre ascendentemente.

SELECT t.nombre,t.especialidad
FROM    Tecnico t
WHERE   t.codTec NOT IN(
    SELECT r.codTec
    FROM Reparacion r
)
ORDER BY t.nombre ASC