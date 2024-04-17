# Archana---SQL-Projects
# Cooking Recipe Database Project

## Project Overview
This repository contains the SQL scripts needed to create and manage a database for cooking recipes. It allows users to store, retrieve, and manage recipes along with their ingredients, measurements, and instructions.

## Getting Started

### Prerequisites
- MySQL Server (You can use other SQL servers with appropriate syntax adjustments)
- MySQL Workbench or any preferred SQL management tool

### Setting Up the Database

1. **Create Database and Tables**
   - Run `Creating_Tables.sql` to set up the initial database schema, including tables for recipes, ingredients, measures, and recipe ingredients.

2. **Initialize the Database**
   - Use `Inserting_Values.sql` to populate the database with initial values for ingredients, measures, and sample recipe ingredients.

3. **Insert Recipes**
   - Specific recipes can be added using files like `ChocolatechipCookieRecipie.sql` and `TomatoSoup_Recipe.sql` which insert detailed information for each recipe.

### Retrieving Data
- To fetch details about specific recipes, such as ingredients and instructions, use `Retrieving_A_Recipie.sql`. This script demonstrates how to pull comprehensive details from the database.

## Repository File Descriptions

- `Creating_Tables.sql`: Contains SQL commands to create all the necessary tables for the recipe database.
- `Inserting_Values.sql`: Provides SQL commands to insert initial data into the tables, setting up basic ingredients and measurements.
- `ChocolatechipCookieRecipie.sql`: Inserts all data related to the chocolate chip cookie recipe.
- `TomatoSoup_Recipe.sql`: Inserts all data related to the tomato soup recipe.
- `Retrieving_A_Recipie.sql`: Demonstrates how to retrieve a complete recipe with ingredients and instructions from the database.

## Usage
After setting up the database with the provided scripts, you can start adding more recipes, ingredients, and measures. You can also query the database to find recipes based on ingredients, dietary restrictions, or other criteria.

