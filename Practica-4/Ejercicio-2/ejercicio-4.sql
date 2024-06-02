/*Listar datos personales de clientes que viajaron solo con destino a la ciudad de ‘Coronel
Brandsen’*/
SELECT cli.nombre,cli.apellido,cli.dni
FROM Cliente cli
WHERE cli.idCliente IN (
    SELECT cli.idCliente
    FROM Cliente cli INNER JOIN Viaje v ON (cli.dni=v.dni)
    WHERE v.cpDestino = 'Coronel Brandsen'
)AND cli.idCliente NOT IN(
    SELECT cli.idCliente
    FROM Cliente cli INNER JOIN Viaje v ON (cli.dni=v.dni)
    WHERE v.cpDestino <> 'Coronel Brandsen'    
)