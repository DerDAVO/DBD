/*
Técnico (codTec, nombre, especialidad) // técnicos
Repuesto (codRep, nombre, stock, precio) // repuestos
RepuestoReparacion (nroReparac, codRep, cantidad, precio) //repuestos utilizados en reparaciones.
Reparación (nroReparac, codTec, precio_total, fecha) //reparaciones realizadas.

*/
-- Listar para cada repuesto nombre, stock y cantidad de técnicos distintos que lo
-- utilizaron. Si un repuesto no participó en alguna reparación igual debe aparecer en
-- dicho listado.
SELECT r.nombre,r.stock,COUNT(DISTINCT rep.codTec) AS CantidadDeTecnicosQueLoUtilizaron
FROM Repuesto r LEFT JOIN RepuestoReparacion rrep ON(r.codRep=rrep.codRep) LEFT JOIN Reparacion rep ON(rep.nroReparac=rrep.nroReparac)
GROUP BY r.codRep
