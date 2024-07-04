/*
Localidad(CodigoPostal, nombreL, descripcion, #habitantes)
Arbol(nroArbol, especie, años, calle, nro, codigoPostal(fk))
Podador(DNI, nombre, apellido, telefono,fnac,codigoPostalVive(fk))
Poda(codPoda,fecha, DNI(fk),nroArbol(fk))
*/
-- Listar DNI, apellido, nombre, teléfono y fecha de nacimiento de podadores que solo podaron
-- árboles de especie ‘Coníferas’.

SELECT  pdr.DNI,pdr.apellido,pdr.nombre,pdr.telefono,pdr.fnac AS fechaDeNacimiento
FROM    Podador pdr
WHERE pdr.DNI IN(
    SELECT  pd.DNI
    FROM    Poda pd INNER JOIN Arbol a ON(pd.nroArbol=a.nroArbol)
    WHERE   a.especie='Conniferas'
    EXCEPT
    SELECT pd2.DNI
    FROM    Poda pd2 INNER JOIN Arbol a2 ON(pd2.nroArbol=a2.nroArbol)
    WHERE   a2.especie<>'Coniferas'
)