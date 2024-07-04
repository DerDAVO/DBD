/*
Técnico (codTec, nombre, especialidad) // técnicos
Repuesto (codRep, nombre, stock, precio) // repuestos
RepuestoReparacion (nroReparac, codRep, cantidad, precio) //repuestos utilizados en reparaciones.
Reparación (nroReparac, codTec, precio_total, fecha) //reparaciones realizadas.

*/
-- Listar nombre y especialidad del técnico con mayor cantidad de reparaciones
-- realizadas y el técnico con menor cantidad de reparaciones.


SELECT t.nombre,t.especialidad
FROM Tecnico t INNER JOIN Reparacion rep ON(rep.codTec=t.codTec)
GROUP BY t.codTec,t.nombre,t.especialidad
HAVING COUNT(*) >=ALL(
    SELECT COUNT(*) AS cantidadDeReparaciones 
    FROM Reparacion rep INNER JOIN Tecnico t ON( rep.codTec=t.codTec)
    GROUP BY t.codTec
)
    
SELECT t2.nombre,t2.especialidad
FROM Tecnico t2 INNER JOIN Reparacion rep2 ON(rep2.codTec=t2.codTec)
GROUP BY t2.codTec,t2.nombre,t2.especialidad
HAVING COUNT(*) <=ALL(
    SELECT COUNT(*) AS cantidadDeReparaciones 
    FROM Reparacion rep INNER JOIN Tecnico t ON( rep.codTec=t.codTec)
    GROUP BY t.codTec
)