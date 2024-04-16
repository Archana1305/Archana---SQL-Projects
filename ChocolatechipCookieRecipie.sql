-- Assuming recipe_id 1 for Chocolate Chip Cookies and 2 for Pancakes
-- Assuming ingredient_id values are sequentially assigned starting from 1

-- Ingredients for Chocolate Chip Cookies
INSERT INTO recipe_ingredient (recipe_id, ingredient_id, measure_id, amount) VALUES
(1, 1, 1, 2), -- 2 Cups of Flour
(1, 8, 1, 2), -- 2 Cups of Chocolate Chips
(1, 9, 2, 2), -- 2 Teaspoons of Vanilla Extract
(1, 10, 1, 1); -- 1 Cup of Brown Sugar

-- Ingredients for Pancakes
INSERT INTO recipe_ingredient (recipe_id, ingredient_id, measure_id, amount) VALUES
(2, 1, 1, 1.5), -- 1.5 Cups of Flour
(2, 2, 2, 3.5), -- 3.5 Teaspoons of Baking Powder
(2, 5, 1, 1.25), -- 1.25 Cups of Milk
(2, 6, 4, 1); -- 1 Egg
