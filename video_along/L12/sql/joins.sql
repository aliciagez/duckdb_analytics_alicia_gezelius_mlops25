SELECT
    p.plant_id
FROM
    plants p
    LEFT JOIN plant_care PC ON p.plant_id = pc.plant_id;