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

-- Listar DNI, legajo y apellido y nombre de todos los alumnos que tegan año ingreso
-- inferior a 2014.
SELECT a.DNI,a.legajo,p.apellido,p.nombre
FROM ALUMNO a INNER JOIN PERSONA p ON(a.DNI=p.DNI)
WHERE a.Año_Ingreso < '2014-01-01'