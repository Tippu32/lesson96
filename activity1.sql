CREATE TABLE IF NOT EXISTS zoo_animals (
    animal_id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    species TEXT NOT NULL,
    age_years INTEGER NOT NULL,
    WEIGHT_KG REAL NOT NULL
);

INSERT INTO zoo_animals VALUES (1, 'Leo', 'Lion', 5, 190.5);
INSERT INTO zoo_animals VALUES (2, 'Molly', 'Elephant', 10, 5400.0);
INSERT INTO zoo_animals VALUES (3, 'Zara', 'Zebra', 3, 350.0);
INSERT INTO zoo_animals VALUES (4, 'Gerry', 'Giraffe', 7, 800.0);
INSERT INTO zoo_animals VALUES (5, 'Perry', 'Penguin', 2, 30.0);
INSERT INTO zoo_animals VALUES (6, 'Sammy', 'Snake', 4, 15.0);
INSERT INTO zoo_animals VALUES (7, 'Benny', 'Bear', 6, 300.0);
INSERT INTO zoo_animals VALUES (8, 'Tina', 'Tiger', 8, 220.0);

SELECT*FROM zoo_animals;

-- ----PART 2: SELECT DISTINCT ----
--All species values including duplicates
SELECT species FROM zoo_animals;

SELECT DISTINCT species FROM zoo_animals;

SELECT COUNT(DISTINCT animal_id) AS unique_animals_count FROM zoo_animals;

SELECT COUNT(DISTINCT animal_id) AS total_animals FROM zoo_animals;

SELECT COUNT(DISTINCT animal_id) AS older_than_5 FROM zoo_animals WHERE age_years > 5;


SELECT SUM(weight_kg) AS total_weight_kg FROM zoo_animals;

select AVG(age_years) AS avg_age_years FROM zoo_animals;

SELECT
    COUNT(animal_id)AS total_animals,
    COUNT(DISTINCT species) AS unique_species,
    SUM(weight_kg) AS total_weight_kg,
    AVG(age_years) AS avg_age_years
FROM zoo_animals;