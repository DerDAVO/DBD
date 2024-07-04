/*
Localidad(CodigoPostal, nombreL, descripcion, #habitantes)
Arbol(nroArbol, especie, años, calle, nro, codigoPostal(fk))
Podador(DNI, nombre, apellido, telefono,fnac,codigoPostalVive(fk))
Poda(codPoda,fecha, DNI(fk),nroArbol(fk))
*/
-- Reportar especie, años,calle, nro y localidad de árboles que fueron podados durante 2017 y
-- no fueron podados durante 2018.

SELECT a.especie,a.años,a.calle,a.nro,l.nombreL
FROM Arbol a INNER JOIN Localidad l ON(a.codigoPostal=l.codigoPostal)
WHERE a.nroArbol IN(
    SELECT pd1.nroArbol
    FROM Poda pd1
    WHERE pd1.fecha BETWEEN('2017-01-01'AND'2017-12-31') 
    EXCEPT --retorna una tabla con los nroArbol que estan en pd1 y no estan en pd2
    SELECT pd2.nroArbol
    FROM Poda pd2 
    WHERE pd2.fecha BETWEEN('2018-01-01'AND'2018-12-31')
)