/*Informar cantidad de viajes de la agencia 
con razón social ‘TAXI Y’ realizados a ‘Villa Elisa’*/

SELECT  count (*)
FROM    Agencia a INNER JOIN Viaje v ON (a.razonSocial=v.razonSocial) 
WHERE   v.cpDestino='Villa Elisa'