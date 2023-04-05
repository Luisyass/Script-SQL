SELECT E.Nombre as 'Colaborador', 
(((STRFTIME('%Y','2023-04-04') - STRFTIME('%Y',E.FechaIngreso))*12)+(STRFTIME('%m','2023-04-04') - STRFTIME('%m',E.FechaIngreso))) as 'Meses'  
FROM Empleados E
JOIN Departamentos D
ON E.DepartamentoId = D.id
WHERE Meses > 13
ORDER BY Meses ASC;
