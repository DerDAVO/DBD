/*
PERSONA=(DNI, Apellido, Nombre, Fecha_Nacimiento, Estado_Civil, Genero)
ALUMNO=(DNI, Legajo, Año_Ingreso)
PROFESOR=(DNI, Matricula, Nro_Expediente)
TITULO = (Cod_Titulo, Nombre, Descripción)
TITULO-PROFESOR = (Cod_Titulo, DNI, Fecha)
CURSO=(Cod_Curso, Nombre, Descripción, Fecha_Creacion, Duracion)
ALUMNO-CURSO =(DNI, Cod_Curso, Año, Desempeño, Calificación)
PROFESOR-CURSO = (DNI, Cod_Curso, Fecha_Desde, Fecha_Hasta)
*/

-- Listar el DNI, Apellido, Nombre, Legajo de alumnos que realizaron cursos con nombre
-- conteniendo el string ‘BD’ durante 2018 pero no realizaron ningún curso durante 2019
SELECT p.DNI,p.nombre,p.apellido,a.Legajo
FROM PERSONA p INNER JOIN ALUMNO a ON(a.DNI=p.DNI)
WHERE p.DNI IN(
SELECT ac1.DNI
    FROM ALUMNO-CURSO ac1 INNER JOIN CURSO c1 ON(ac1.Cod_Curso=c1.Cod_Curso)
    WHERE c1.nombre LIKE '%BD%' AND ac1.Año='2018')
    AND 
    NOT IN( SELECT ac.DNI
            FROM ALUMNO-CURSO ac
            WHERE ac.año = '2019')