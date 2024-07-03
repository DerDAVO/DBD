/*
Localidad(CodigoPostal, nombreL, descripcion, #habitantes)
Arbol(nroArbol, especie, años, calle, nro, codigoPostal(fk))
Podador(DNI, nombre, apellido, telefono,fnac,codigoPostalVive(fk))
Poda(codPoda,fecha, DNI(fk),nroArbol(fk))
*/

-- Listar especie, años, calle, nro y localidad de árboles que no fueron podados nunca.
SELECT  a.especie,a.años,a.calle,a.nro,l.nombreL
FROM Localidad l INNER JOIN Arbol a ON(a.codigoPostal=l.CodigoPostal) LEFT JOIN Poda p ON(a.nroArbol=p.nroArbol)
WHERE p.codPoda IS NULL
