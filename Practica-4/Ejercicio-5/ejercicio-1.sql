/*
Localidad(CodigoPostal, nombreL, descripcion, #habitantes)
Arbol(nroArbol, especie, años, calle, nro, codigoPostal(fk))
Podador(DNI, nombre, apellido, telefono,fnac,codigoPostalVive(fk))
Poda(codPoda,fecha, DNI(fk),nroArbol(fk))
*/


-- Listar especie, años, calle, nro. y localidad de árboles podados por el podador ‘Juan Perez’ y
-- por el podador ‘Jose Garcia’
SELECT especie,años,calle,nro,nombreL
FROM Arbol a INNER JOIN Localidad l ON(a.codigoPostal=l.codigoPostal)
WHERE a.nroArbol IN(
SELECT p.nroArbol
FROM Poda p 
WHERE p.dni IN (SELECT pdr.DNI 
            FROM Podador pdr
            WHERE pdr.nombre='Juan Perez' or pdr.nombre='Jose Garcia')
)