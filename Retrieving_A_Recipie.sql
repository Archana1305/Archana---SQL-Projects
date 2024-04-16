SELECT r.name, r.description, r.instructions
FROM recipe AS r
JOIN recipe_ingredient AS ri ON r.recipe_id = ri.recipe_id
JOIN ingredient AS i ON ri.ingredient_id = i.ingredient_id
WHERE i.name = 'Flour';
