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
-- Listar el DNI, Apellido, Nombre y Calificación de aquellos alumnos que obtuvieron una
-- calificación superior a 9 en los cursos que dicta el profesor “Juan Garcia”. Dicho listado
-- deberá estar ordenado por Apellido.
SELECT  p.DNI,p.apellido,p.nombre,ac.calificación
FROM    PERSONA p INNER JOIN ALUMNO a ON(p.DNI=a.DNI) INNER JOIN ALUMNO-CURSO ac ON (a.DNI=ac.DNI)
WHERE   ac.Cod_Curso IN (
    SELECT pc.Cod_Curso
    FROM PROFESOR-CURSO pc INNER JOIN PROFESOR pr ON(pc.DNI= pr.DNI)INNER JOIN PROFESOR pr ON(pr.DNI=per.DNI)
    WHERE per.nombre='Juan Garcia'
)AND ac.calificacion > 9
ORDER BY p.apellido

