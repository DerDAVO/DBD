/*
    Club=(codigoClub, nombre, anioFundacion, codigoCiudad(FK))
    Ciudad=(codigoCiudad, nombre)
    Estadio=(codigoEstadio, codigoClub(FK), nombre, direccion)
    Jugador=(DNI, nombre, apellido, edad, codigoCiudad(FK))
    ClubJugador(codigoClub, DNI, desde, hasta)
*/
--Mostrar para cada club, nombre de club y la edad promedio de los jugadores que juegan
--actualmente en cada uno.

SELECT c.nombre,AVG(j.edad) AS promedioDeEdad
FROM Jugador j INNER JOIN ClubJugador cj ON(j.DNI=cj.DNI) INNER JOIN Club c ON(c.codigoClub=cj.codigoClub)
WHERE cj.hasta > '2024-7-3'
GROUP BY c.codigoClub,c.nombre


