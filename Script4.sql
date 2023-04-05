SELECT E.Nombre as 'Colaborador', D.Nombre as 'Departamento', RANK() OVER(PARTITION BY E.id ORDER BY D.Nombre) Orden
FROM Empleados E
JOIN Departamentos D
ON E.DepartamentoId = D.id
ORDER BY D.Nombre LIKE 'M%' DESC,
D.Nombre ASC, E.Nombre ASC;
