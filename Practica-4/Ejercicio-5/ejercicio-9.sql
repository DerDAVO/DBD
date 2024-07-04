/*
Localidad(CodigoPostal, nombreL, descripcion, #habitantes)
Arbol(nroArbol, especie, años, calle, nro, codigoPostal(fk))
Podador(DNI, nombre, apellido, telefono,fnac,codigoPostalVive(fk))
Poda(codPoda,fecha, DNI(fk),nroArbol(fk))
*/
-- Reportar nombre, descripción y cantidad de habitantes de localidades que tengan menos de
-- 100 árboles

SELECT l.nombreL,l.descripcion,l.#habitantes
FROM Localidad l INNER JOIN Arbol a ON(a.codigoPostal=l.codigoPostal)
GROUP BY l.codigoPostal
HAVING COUNT(*) < 100