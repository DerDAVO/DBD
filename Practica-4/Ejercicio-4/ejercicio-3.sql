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
-- Listar el DNI, Apellido, Nombre, Género y Fecha de nacimiento de los alumnos inscriptos
-- al curso con nombre “Diseño de Bases de Datos” en 2019.
SELECT  p.DNI,p.nombre,p.apellido,p.Genero,p.Fecha_Nacimiento
FROM PERSONA p INNER JOIN ALUMNO a ON(p.DNI=a.DNI) INNER JOIN ALUMNO-CURSO ac ON(a.DNI=ac.DNI)INNER JOIN CURSO c (c.Cod_Curso=ac.Cod_Curso) 
WHERE   c.nombre='Diseño de Bases de Datos' AND ac.Año=2019