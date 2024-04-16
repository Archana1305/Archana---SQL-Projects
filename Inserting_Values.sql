-- Inserting data into the recipe table
INSERT INTO recipe (name, description, instructions) VALUES
('Chocolate Chip Cookies', 'Delicious and chewy chocolate chip cookies', '1. Preheat oven to 350 degrees F. 2. Cream together the butter, white sugar, and brown sugar until smooth. 3. Beat in the eggs one at a time, then stir in the vanilla. 4. Dissolve baking soda in hot water. Add to batter along with salt. 5. Stir in flour, chocolate chips, and nuts. 6. Drop by large spoonfuls onto ungreased pans. 7. Bake for about 10 minutes in the preheated oven, or until edges are nicely browned.'),
('Pancakes', 'Fluffy pancakes perfect for any morning', '1. In a large bowl, sift together the flour, baking powder, salt, and sugar. 2. Make a well in the center and pour in the milk, egg, and melted butter; mix until smooth. 3. Heat a lightly oiled griddle or frying pan over medium-high heat. 4. Pour or scoop the batter onto the griddle, using approximately 1/4 cup for each pancake. Brown on both sides and serve hot.');

-- Inserting data into the ingredient table
INSERT INTO ingredient (name) VALUES
('Flour'),
('Baking Powder'),
('Salt'),
('Sugar'),
('Milk'),
('Egg'),
('Butter'),
('Chocolate Chips'),
('Vanilla Extract'),
('Brown Sugar');

-- Inserting data into the measure table
INSERT INTO measure (name) VALUES
('Cups'),
('Teaspoons'),
('Tablespoons'),
('Pieces');
