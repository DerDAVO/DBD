/*
Localidad(CodigoPostal, nombreL, descripcion, #habitantes)
Arbol(nroArbol, especie, años, calle, nro, codigoPostal(fk))
Podador(DNI, nombre, apellido, telefono,fnac,codigoPostalVive(fk))
Poda(codPoda,fecha, DNI(fk),nroArbol(fk))
*/
-- Listar especie de árboles que se encuentren en la localidad de ‘La Plata’ y también en la
-- localidad de ‘Salta’.

(SELECT  a1.especie 
FROM    Arbol a1 
WHERE   a1.codigoPostal IN (
    SELECT l1.codigoPostal
    FROM    Localidad l1
    WHERE l1.nombreL='La Plata'
))
INTERSECT
(
    SELECT a2.especie
    FROM Arbol a2
    WHERE a2.codigoPostal IN(
        SELECT l2.codigoPostal
        FROM    Localidad l2
        WHERE l2.nombreL='Salta'
    )
)