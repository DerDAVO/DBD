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
-- Dar de baja el alumno con DNI 30568989. Realizar todas las bajas necesarias para no
-- dejar el conjunto de relaciones en estado inconsistente.

DELETE FROM ALUMNO-CURSO
WHERE DNI = 30568989


DELETE FROM PERSONA
WHERE DNI = 30568989

DELETE FROM ALUMNO 
WHERE DNI = 30568989