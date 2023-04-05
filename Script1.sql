SELECT D.Nombre as 'Departamento', 
MIN(E.Salario) as 'Minimo', 
MAX(E.Salario) as 'Maximo', 
AVG(E.Salario) as 'Promedio'
FROM Departamentos D
JOIN Empleados E
ON D.id = E.DepartamentoId
GROUP BY D.Nombre;
