SELECT 
TOP 5
    class, 
    AVG(level) AS avg_level
FROM 
    characters
GROUP BY
    class
HAVING 
    AVG(level) > 22
ORDER BY 
    AVG(level) DESC;


/*
    order of sql clauses
    lexical order 
    logical order
    effective order

*/



SELECT 
    name,
    level,
CASE
    WHEN class = 'Mage' THEN level * 0.5
    WHEN class IN ('Archer', 'Warrior') THEN level * 0.75
    ELSE level * 1.5
END AS power_level
FROM
    characters;

SELECT * from characters;
EXEC sp_help 'characters';


SELECT 
    * 
FROM 
    (
        SELECT 
            name,
            level,
        CASE
            WHEN class = 'Mage' THEN level * 0.5
            WHEN class IN ('Archer', 'Warrior') THEN level * 0.75
            ELSE level * 1.5
        END AS power_level
        FROM
            characters
    ) AS power_calculation
WHERE 
    power_level >= 15

SELECT
    * 
FROM 
    inventory
WHERE
    character_id = 6;

SELECT
    chars.name as character_name,
    mentors.name as mentor_name
FROM 
    characters chars
JOIN 
    characterS mentors
ON 
    chars.mentor_id = mentors.id

-- a list of all characers and the items that they can use
SELECT
    c.name,
    c.experience / 100,
    i.name,
    i.power
FROM 
    characters c
JOIN
    items i
ON
    c.experience / 100 >= i.power
ORDER BY
    c.name;

SELECT
    c.name as name,
    m.name as mentor_name
FROM 
    characters c
LEFT JOIN
    characters m
ON
   c.id = m.id
;

SELECT
    class,
    MAX(level)
FROM 
    characters
GROUP BY
    class -- grouping field



SELECT
    class,
    MAX(level) AS max_level,
    MIN(level) AS min_level,
    COUNT(*) AS n_values,
    AVG(level) as avg_level,
    MAX(health) as max_health
FROM 
    characters
GROUP BY
    class -- grouping field


 SELECT
    class,
    MAX(level) AS max_level,
    MIN(level) AS min_level,
    COUNT(*) AS n_values,
    AVG(level) as avg_level,
    MAX(health) as max_health,
    MIN(experience) as min_experience,
    AVG(LEN(name)) as avg_name_length
FROM 
    characters
GROUP BY
    class -- grouping field


SELECT
    item_type,
    rarity,
    AVG(power)
FROM 
    items
GROUP BY
    item_type,
    rarity;

-- numbering functions
