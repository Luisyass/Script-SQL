SELECT ROW_NUMBER() OVER(PARTITION BY D.Nombre ORDER BY E.Nombre ASC) Numero, E.Nombre as 'Nombre', D.Nombre as 'Departamento'
FROM Empleados E
JOIN Departamentos D
ON E.DepartamentoId = D.id
ORDER BY D.Nombre ASC,
D.Nombre ASC, E.Nombre ASC;
