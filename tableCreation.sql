CREATE TABLE users(
    id SERIAL PRIMARY KEY,
    email VARCHAR(60) NOT NULL,
    password VARCHAR(256) NOT NULL,
    name VARCHAR(60) NOT NULL
);

CREATE TABLE grocerylist(
    grocerylist_id SERIAL PRIMARY KEY,
    name VARCHAR(40),
    users_id INT NOT NULL REFERENCES users(id)
);

CREATE TABLE recipe(
    recipe_id SERIAL PRIMARY KEY,
    users_id INT NOT NULL REFERENCES users(id),
    name VARCHAR(60) NOT NULL,
    description TEXT,
    imageURL TEXT,
    private BOOL NOT NULL
);

CREATE TABLE occasion(
    occasion_id SERIAL PRIMARY KEY,
    name VARCHAR(60) NOT NULL
);

CREATE TABLE userOccasion(
    user_occasion_id SERIAL PRIMARY KEY,
    users_id INT NOT NULL REFERENCES users(id),
    occasion_id INT NOT NULL REFERENCES occasion(occasion_id)
);

CREATE TABLE recipeOccasion(
    recipe_occasion_id SERIAL PRIMARY KEY,
    recipe_id INT NOT NULL REFERENCES recipe(recipe_id),
    occasion_id INT NOT NULL REFERENCES occasion(occasion_id)
);

CREATE TABLE ingredient(
    ingredient_id SERIAL PRIMARY KEY,
    name VARCHAR(60) NOT NULL,
    description TEXT,
    imageURL TEXT
);

CREATE TABLE step(
    step_id SERIAL PRIMARY KEY,
    recipe_id INT NOT NULL REFERENCES recipe(recipe_id),
    ingredient_id INT REFERENCES ingredient(ingredient_id),
    step_number INT NOT NULL,
    description TEXT NOT NULL
);

CREATE TABLE grocerylistIngredient(
    grocerylist_ingredient_id SERIAL PRIMARY KEY,
    grocerylist_id INT NOT NULL REFERENCES grocerylist(grocerylist_id),
    ingredient_id INT NOT NULL REFERENCES ingredient(ingredient_id)
);

CREATE TABLE recipeIngredient(
    recipe_ingredient_id SERIAL PRIMARY KEY,
    recipe_id INT NOT NULL REFERENCES recipe(recipe_id),
    ingredient_id INT NOT NULL REFERENCES ingredient(ingredient_id)
);