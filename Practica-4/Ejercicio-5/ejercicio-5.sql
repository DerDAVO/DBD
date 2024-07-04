/*
Localidad(CodigoPostal, nombreL, descripcion, #habitantes)
Arbol(nroArbol, especie, años, calle, nro, codigoPostal(fk))
Podador(DNI, nombre, apellido, telefono,fnac,codigoPostalVive(fk))
Poda(codPoda,fecha, DNI(fk),nroArbol(fk))
*/
-- Reportar DNI, nombre, apellido, fnac y localidad donde viven podadores con apellido
-- terminado con el string ‘ata’ y que el podador tenga al menos una poda durante 2018.
-- Ordenar por apellido y nombre.

SELECT DISTINCT pdr.DNI,pdr.nombre,pdr.apellido,pdr.fnac,l.nombreL
FROM    Localidad l INNER JOIN Podador pdr ON(l.codigoPostal=pdr.codigoPostal) INNER JOIN Poda pd ON(pdr.DNI=pd.DNI)
WHERE   pdr.apellido LIKE ('%ata') AND pd.fecha BETWEEN ('2018-01-01'AND'2018-12-31')
ORDER BY pdr.apellido,pdr.nombre