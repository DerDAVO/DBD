/*
    Club=(codigoClub, nombre, anioFundacion, codigoCiudad(FK))
    Ciudad=(codigoCiudad, nombre)
    Estadio=(codigoEstadio, codigoClub(FK), nombre, direccion)
    Jugador=(DNI, nombre, apellido, edad, codigoCiudad(FK))
    ClubJugador(codigoClub, DNI, desde, hasta)
*/
-- Mostrar el nombre de los clubes que nunca hayan tenido jugadores de la ciudad de Mar
-- del Plata.

SELECT  DISTINCT c.nombre 
FROM Club c 
WHERE c.codigoClub NOT IN(
    SELECT cj.codigoClub
    FROM Jugador j INNER JOIN ClubJugador cj ON(j.DNI=cj.DNI)
    WHERE j.codigoCiudad NOT IN(
        SELECT ci.codigoCiudad
        FROM Ciudad ci
        WHERE ci.nombre='Mar del Plata'
    )
)

