/*
Localidad(CodigoPostal, nombreL, descripcion, #habitantes)
Arbol(nroArbol, especie, años, calle, nro, codigoPostal(fk))
Podador(DNI, nombre, apellido, telefono,fnac,codigoPostalVive(fk))
Poda(codPoda,fecha, DNI(fk),nroArbol(fk))
*/
--   Eliminar el podador con DNI: 22234566.

DELETE FROM Podador
WHERE   DNI=22234566