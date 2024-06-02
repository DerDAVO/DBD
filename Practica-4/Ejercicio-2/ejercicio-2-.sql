/*Listar fecha, hora, datos personales del cliente, ciudad origen y destino de viajes realizados
en enero de 2019 donde la descripción del viaje contenga el String ‘demorado’.*/
SELECT  v.fecha, v.hora, cli.nombre,cli.apellido,cli.dni ciu.cpOrigen,ciu.cpDestino
FROM Cliente cli INNER JOIN Viaje v ON (cli.dni=v.dni)
    INNER JOIN Agencia a ON (a.razonSocial=v.razonSocial)
    INNER JOIN Ciudad ciu ON (ciu.codPostal=v.cpOrigen)
WHERE v.fecha BETWEEN  1/1/2019 and 31/12/2019 AND v.descripcion ='demorado'