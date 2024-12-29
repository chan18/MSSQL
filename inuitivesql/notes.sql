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

ALTER  TABLE characters
ALTER COLUMN 


select * from characters;

