/*
    Club=(codigoClub, nombre, anioFundacion, codigoCiudad(FK))
    Ciudad=(codigoCiudad, nombre)
    Estadio=(codigoEstadio, codigoClub(FK), nombre, direccion)
    Jugador=(DNI, nombre, apellido, edad, codigoCiudad(FK))
    ClubJugador(codigoClub, DNI, desde, hasta)
*/

-- Listar para cada jugador: nombre, apellido, edad y cantidad de clubes diferentes en los
-- que jugó. (incluido el actual)

SELECT j.nombre,j.apellido,j.edad COUNT(DISTINCT cj.codigoClub) AS CantidadDeClubesEnLosQueJugo
FROM Jugador j INNER JOIN ClubJugador cj ON(j.DNI=cj.DNI)
GROUP BY j.nombre,j.apellido
