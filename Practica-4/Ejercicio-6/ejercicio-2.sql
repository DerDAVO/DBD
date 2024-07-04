/*
Técnico (codTec, nombre, especialidad) // técnicos
Repuesto (codRep, nombre, stock, precio) // repuestos
RepuestoReparacion (nroReparac, codRep, cantidad, precio) //repuestos utilizados en reparaciones.
Reparación (nroReparac, codTec, precio_total, fecha) //reparaciones realizadas.

*/
-- Listar nombre, stock, precio de repuesto que participaron en reparaciones durante
-- 2019 y además no participaron en reparaciones del técnico ‘José Gonzalez’.

SELECT r.nombre,r.stock,r.precio
FROM    Repuesto r
WHERE  r.codRep IN (
SELECT  r.codRep
FROM    Repuesto r INNER JOIN RepuestoReparacion rrep ON(r.codRep=rrep.codRep)INNER JOIN Reparación rep ON(rrep.nroReparac=rep.nroReparac)
WHERE fecha BETWEEN ('2019-01-01'AND'2019-12-31')
)AND NOT IN(
SELECT rr.codRep
FROM    Reparacion rep INNER JOIN Tecnico t ON(rep.codTec=t.codTec) INNER JOIN RepuestoReparacion rr ON(rr.nroReparac=rep.nroReparac)
WHERE t.codTec IN (
    SELECT t1.codTec
    FROM Tecnico t1
    WHERE t1.nombre = 'Jose Gonzales'
))