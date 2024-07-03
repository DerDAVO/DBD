/*
    Club=(codigoClub, nombre, anioFundacion, codigoCiudad(FK))
    Ciudad=(codigoCiudad, nombre)
    Estadio=(codigoEstadio, codigoClub(FK), nombre, direccion)
    Jugador=(DNI, nombre, apellido, edad, codigoCiudad(FK))
    ClubJugador(codigoClub, DNI, desde, hasta)
*/
--Reportar el nombre y apellido de aquellos jugadores que hayan jugado en todos los
--clubes.

--Lo que se quiere mostrar
SELECT nombre,apellido
FROM Jugador j
--Para Todos
WHERE NOT EXISTS(
    SELECT *
    FROM Club c
    WHERE NOT EXISTS(
        --Relacion/coincidencias
        SELECT *
        FROM ClubJugador cj 
        WHERE cj.DNI=j.DNI AND c.codigoClub=cj.codigoClub
    )
)
