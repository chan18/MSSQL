

```sql
SELECT DISTINCT HireDate
FROM HumanResources.Employee
ORDER BY HireDate;

SELECT HireDate
FROM HumanResources.Employee
GROUP BY HireDate
ORDER BY HireDate;
```

```sql


CREATE TABLE dbo.Test
    (
        Column1 INT,
        Column2 INT,
        CONSTRAINT UK_Test UNIQUE (Column1, Column2)
    );
GO
EXECUTE sp_rename 'dbo.Test', 'MyTestTable', 'object';


```
