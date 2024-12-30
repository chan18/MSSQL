


--  Keyword WITH starts things off
[;]WITH
-- First CTE , Common Table Expression (CTE)
cte1 [(col1, col2, …)] -- Optional list of column names
AS (
SELECT …), -- Query definition

-- Second CTE, Optional second common table expression
cte2 [(col1, col2, …)]
AS (
SELECT …),

-- Other CTEs , Additional CTEs, as required

-- Outer query using the CTEs, Final query, using the common table expressions
SELECT | INSERT | UPDATE | DELETE




-- Rename a column

;WITH simpleCTE (FortyTwo) AS (
    SELECT 42 AS tweenverttig -- Setting the column name in Dutch
)

SELECT 
    FortyTwo 
FROM 
    simpleCTE

GO

-- equivalent to

SELECT
    FortyTwo
FROM (
    SELECT
        42
    AS
    tweenvertig
) simpleSubquery (FortyTwo) -- Renaming the column another way

GO


-- get selection of employees

;WITH Emps AS (
    SELECT
        *
    FROM
        HumanResources.Employee AS e
    WHERE
        e.BirthDate > '1990-01-01'
),
People AS (
    SELECT
        *
    FROM
        Person.Person AS P
    WHERE
        p.LastName LIKE 'K%'
)

SELECT
    CONCAT_WS('.', P.FirstName, p.LastName, e.JobTitle) AS NameAndTitle
FROM 
    Emps e
JOIN 
    People p
ON
    p.BusinessEntityID = e.BusinessEntityID



-- Updating (also good for deleting and inserting)

BEGIN TRAN -- Protect against unwanted changes

;WITH cur AS (
    SELECT
        CurrencyCode,
        Name
    FROM
        Sales.Currency as c -- ORDER BY name
    WHERE
        c.CurrencyCode IN ('NLG', 'BEF','FRF', 'ITL', 'DME')
)

UPDATE Cur
SET Cur.Name = CONCAT_WS(' ', cur.Name, '-', cur.CurrencyCode, 'No longer used, use Euro')
OUTPUT
    deleted.CurrencyCode, 
    deleted.Name,
    inserted.Name

ROLLBACK

GO




[;]WITH
    -- possible Other CTEs

    -- Recursive CTE

    recurs [(col1, col2, …)]
    AS (
        SELECT …
        UNION ALL
        SELECT …
        FROM recurs
      )
),

-- Outer query using the recursive

SELECT | INSERT | UPDATE | DELETE
FROM recurs





