/*Reportar información de agencias que realizaron viajes durante 2019 o que tengan dirección
de mail que termine con ‘@jmail.com’*/

SELECT  a.email,a.dirección,a.telef,a.razonSocial
FROM Viaje v INNER JOIN Agencia a ON (a.razonSocial = v.razonSocial)
WHERE v.fecha BETWEEN 1/1/2019 AND 31/12/2019 AND a.email LIKE '%@jmail.com'