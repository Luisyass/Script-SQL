SELECT E.Nombre as 'Empleado', E.Salario, D.Nombre as 'Departamento'
FROM Empleados E
JOIN Departamentos D
ON E.DepartamentoId = D.id
GROUP BY E.Nombre
HAVING MAX(E.Salario) AND E.Salario >15000
ORDER BY D.Nombre ASC, E.Salario DESC;
