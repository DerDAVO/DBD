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
-- Listar Nombre, Descripción del curso que posea más alumnos inscriptos y del que posea
-- menos alumnos inscriptos durante 2019.

SELECT c.Cod_Curso
FROM CURSO c
GROUP BY c.Cod_Curso
HAVING MAX(c.inscriptos)
SELECT *
FROM CURSO cso INNER JOIN ALUMNO-CURSO ac ON(cso.Cod_Curso = ac.Cod_Curso)INNER JOIN ALUMNO a ON(a.DNI=ac.DNI)
