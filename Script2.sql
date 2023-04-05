SELECT D.Nombre as 'Departamento', COUNT(*) as 'No Empleado'  
FROM Departamentos D
JOIN Empleados E
ON D.id = E.DepartamentoId
GROUP BY D.Nombre
HAVING COUNT(*) >= 3;
