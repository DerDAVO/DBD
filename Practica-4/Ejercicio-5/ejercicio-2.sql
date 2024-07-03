/*
Localidad(CodigoPostal, nombreL, descripcion, #habitantes)
Arbol(nroArbol, especie, años, calle, nro, codigoPostal(fk))
Podador(DNI, nombre, apellido, telefono,fnac,codigoPostalVive(fk))
Poda(codPoda,fecha, DNI(fk),nroArbol(fk))
*/
-- Reportar DNI, nombre, apellido, fnac y localidad donde viven podadores que tengan podas
-- durante 2018.
SELECT pdr.DNI,pdr.nombre,pdr.apellido,pdr.fnac,l.nombreL 
FROM Podador pdr INNER JOIN Localidad l ON(l.codigoPostal=pdr.codigoPostalVive)
WHERE   pdr.DNI IN(
    SELECT p.dni
    FROM Poda p
    WHERE p.fecha BETWEEN ('2018-01-01' and '2018-12-31')
)