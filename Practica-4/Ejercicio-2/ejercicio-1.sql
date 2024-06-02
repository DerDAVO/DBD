/*1. Listar razón social, dirección y teléfono de agencias que realizaron viajes desde la ciudad de
‘La Plata’ (ciudad origen) y que el cliente tenga apellido ‘Roma’. Ordenar por razón social y
luego por teléfono.*/

SELECT  
FROM Cliente cli INNER JOIN Viaje v ON (cli.dni=v.dni)
    INNER JOIN Agencia a ON (a.razonSocial=v.razonSocial)
    INNER JOIN Ciudad ciu ON (ciu.codPostal=v.cpOrigen)
WHERE ciu.nombre='La Plata' AND cli.nombre = 'Roma'
