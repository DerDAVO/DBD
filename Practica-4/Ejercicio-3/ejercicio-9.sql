/*
    Club=(codigoClub, nombre, anioFundacion, codigoCiudad(FK))
    Ciudad=(codigoCiudad, nombre)
    Estadio=(codigoEstadio, codigoClub(FK), nombre, direccion)
    Jugador=(DNI, nombre, apellido, edad, codigoCiudad(FK))
    ClubJugador(codigoClub, DNI, desde, hasta)
*/
--Agregar con codigoClub 1234 el club “Estrella de Berisso” que se fundó en 1921 y que
--pertenece a la ciudad de Berisso. Puede asumir que el codigoClub 1234 no existe en latabla Club.

INSERT INTO Club (codigoClub, nombre, anioFundacion, codigoCiudad)
VALUES (1234,'Estrella de Berisso',1921,
    SELECT c.codigoCiudad
    FROM Club c
    WHERE c.nombre='Berisso'
)