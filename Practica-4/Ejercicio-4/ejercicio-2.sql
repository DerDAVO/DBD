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
-- Listar DNI, matricula, apellido y nombre de los profesores que dictan cursos que tengan
-- más 100 horas de duración. Ordenar por DNI
SELECT DISTINCT p.DNI,p.Matricula,per.apellido,per.nombre
FROM PROFESOR p INNER JOIN PERSONA per ON(p.DNI = per.DNI)
WHERE p.DNI IN( SELECT pc.DNI
                FROM CURSO c INNER JOIN PROFESOR-CURSO pc ON(c.Cod_Curso=pc.Cod_Curso)
                WHERE c.duración > 100)
ORDER BY p.DNI