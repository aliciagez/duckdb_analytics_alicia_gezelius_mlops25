FROM plant_care;
FROM plants;

-- left join, based on plants_care and will be abel to se what plats have car info 
SELECT 
    p.plant_id,
    p.plant_name,
    p.type,
    pc.water_schedule,
    pc.sunlight
FROM 
    plants p
    LEFT JOIN plant_care pc ON p.plant_id = pc.plant_id;

SELECT 
    p.plant_id,
    p.plant_name,
    p.type,
    pc.water_schedule,
    pc.sunlight
FROM 
    plants p -- plant_care pc is same as left  join
    RIGHT JOIN plant_care pc ON p.plant_id = pc.plant_id;

SELECT 
    p.plant_id,
    p.plant_name,
    p.type, -------------this is the order of the colums
    pc.water_schedule,
    pc.sunlight
FROM 
    plants p
    INNER JOIN plant_care pc ON p.plant_id = pc.plant_id; --cuts alla null values


SELECT 
    p.plant_id,
    p.plant_name,
    p.type,
    pc.water_schedule,
    pc.sunlight                                        
FROM 
    plants p
    FULL JOIN plant_care pc ON p.plant_id = pc.plant_id
    ORDER BY p.plant_id;

SELECT 
    p.plant_id,
    p.plant_name,
    p.type,
    pc.water_schedule,
    pc.sunlight                                        
FROM 
    plants p
    CROSS JOIN plant_care pc;