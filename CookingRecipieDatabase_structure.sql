-- Drop schema if it exists and all its contents
DROP DATABASE IF EXISTS cooking_recipe;
-- Create schema if it does not exist
CREATE DATABASE IF NOT EXISTS cooking_recipe;
USE cooking_recipe;

-- Drop tables if they exist
DROP TABLE IF EXISTS recipe_ingredient;
DROP TABLE IF EXISTS measure;
DROP TABLE IF EXISTS ingredient;
DROP TABLE IF EXISTS recipe;

-- Create tables
CREATE TABLE recipe (
    recipe_id INT AUTO_INCREMENT PRIMARY KEY,
    name TEXT,
    description TEXT,
    instructions TEXT
);

CREATE TABLE ingredient (
    ingredient_id INT AUTO_INCREMENT PRIMARY KEY,
    name TEXT
);

CREATE TABLE measure (
    measure_id INT AUTO_INCREMENT PRIMARY KEY,
    name TEXT
);

CREATE TABLE recipe_ingredient (
    recipe_id INT,
    ingredient_id INT,
    measure_id INT,
    amount INT,
    FOREIGN KEY (recipe_id) REFERENCES recipe(recipe_id),
    FOREIGN KEY (ingredient_id) REFERENCES ingredient(ingredient_id),
    FOREIGN KEY (measure_id) REFERENCES measure(measure_id)
);

