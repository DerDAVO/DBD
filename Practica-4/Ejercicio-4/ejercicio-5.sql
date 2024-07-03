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
-- Listar el DNI, Apellido, Nombre y Matrícula de aquellos profesores que posean más de 3
-- títulos. Dicho listado deberá estar ordenado por Apellido y Nombre.

SELECT p.DNI,p.apellido,p.nombre,pr.matricula
FROM   PERSONA p INNER JOIN  PROFESOR pr ON(p.DNI=pr.DNI) INNER JOIN TITULO_PROFESOR tp ON(pr.DNI=tp.DNI)INNER JOIN TITULO t ON(t.Cod_Titulo=tp.Cod_Titulo)
GROUP BY pr.DNI 
HAVING COUNT(tp.Cod_Titulo) > 3--Cuantas Filas hay en cada grupo 
ORDER BY p.apellido,p.nombre