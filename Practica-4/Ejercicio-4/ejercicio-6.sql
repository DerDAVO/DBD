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

-- Listar el DNI, Apellido, Nombre, Cantidad de horas y Promedio de horas que dicta cada
-- profesor. La cantidad de horas se calcula como la suma de la duración de todos los cursos que dicta
SELECT  p.DNI,p.apellido,p.nombre,SUM(c.Duracion)AS CantidadDeHorasTotales,AVG(c.Duracion) AS promedioDeHoras
FROM PERSONA p INNER JOIN ON PROFESOR pr(p.DNI=pr.DNI) INNER JOIN PROFESOR-CURSO pc ON(pr.DNI=pc.DNI)INNER JOIN CURSO c ON(c.Cod_Curso=pc.Cod_Curso)
GROUP BY p.DNI,p.apellido,p.nombre