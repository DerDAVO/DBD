/*
Técnico (codTec, nombre, especialidad) // técnicos
Repuesto (codRep, nombre, stock, precio) // repuestos
RepuestoReparacion (nroReparac, codRep, cantidad, precio) //repuestos utilizados en reparaciones.
Reparación (nroReparac, codTec, precio_total, fecha) //reparaciones realizadas.

*/
-- Listar el nombre, especialidad de técnicos solo participaron en reparaciones durante
-- 2018.

SELECT t.nombre,t.especialidad
FROM Tecnico t
WHERE   t.codTec
IN(
    SELECT r1.codTec
    FROM  Reparacion r1
    WHERE r1.fecha BETWEEN('2018-01-01'AND'2018-12-31')
)AND t.codTec NOT IN(
    SELECT r2.codRep
    FROM Reparacion r2
    WHERE r2.fecha > '2018-12-31' OR r2.fecha <'2018-01-01'
)
