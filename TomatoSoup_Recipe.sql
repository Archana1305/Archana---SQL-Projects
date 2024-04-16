-- Insert into recipe table
INSERT INTO recipe (name, description, instructions)
VALUES ('Classic Tomato Soup', 'A comforting tomato soup that pairs perfectly with grilled cheese.', 'Combine all ingredients and simmer for 20 minutes.');

-- Get the ID of the recipe just inserted (assuming it's the only one for simplicity)
SET @recipe_id = LAST_INSERT_ID();

-- Insert ingredients
INSERT INTO ingredient (name) VALUES ('Tomato'), ('Onion'), ('Salt'), ('Water');
-- Assuming ingredient_ids are 1, 2, 3, 4

-- Insert measures
INSERT INTO measure (name) VALUES ('cups'), ('cups'), ('teaspoon'), ('cups');
-- Assuming measure_ids are 1, 2, 3, 4

-- Linking ingredients and measures to the recipe
INSERT INTO recipe_ingredient (recipe_id, ingredient_id, measure_id, amount)
VALUES (@recipe_id, 1, 1, 4), -- 4 cups of Tomatoes
       (@recipe_id, 2, 2, 2), -- 2 cups of Onion
       (@recipe_id, 3, 3, 1), -- 1 teaspoon of Salt
       (@recipe_id, 4, 4, 4); -- 4 cups of Water



-- Retrieve the recipe details along with its ingredients and measures
SELECT r.name AS Recipe, r.description, r.instructions, i.name AS Ingredient, ri.amount, m.name AS Measure
FROM recipe r
JOIN recipe_ingredient ri ON r.recipe_id = ri.recipe_id
JOIN ingredient i ON ri.ingredient_id = i.ingredient_id
JOIN measure m ON ri.measure_id = m.measure_id
WHERE r.name = 'Classic Tomato Soup';
