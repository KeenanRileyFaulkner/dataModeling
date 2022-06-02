INSERT INTO users(email, password, name)
VALUES
    ('johnsmith@gmail.com', 'H:SDSDFKDJFDLSHLKNSsdfsdfhslkfjJKSdnfs54sf1dsdfhds3DFd4sdf32ddd12213sdfwrdsacv', 'John Smith'),
    ('garrett.yaworski@dv.mtn', 'H:SDSFSDLDKFBBabd4f6165fafds6516sa3df15v1cb13hj61hkjvb21vnb561hhjf1fhfg561', 'Garrett Yaworski'),
    ('mykenzie.rogers@dv.mtn', 'H:SDFSDFLKJHSDFSfgdn1d5fjggdsg3s5fs1df5h3h8898g7g65ds16zsz9cvd81ass1df6ac09', 'Mykenzie Rogers');

INSERT INTO grocerylist(name, users_id)
VALUES
    ('Tim''s birthday dinner', 1),
    ('Weekly', 3);

INSERT INTO recipe(users_id, name, description, imageURL, private)
VALUES
    (1, 'Development', 'A recipe to become a surefire senior dev at FAANG in less than 4 weeks', null, false);

INSERT INTO occasion(name)
VALUES
    ('Career change'),
    ('Lost job');

INSERT INTO userOccasion(users_id, occasion_id)
VALUES
    (3, 2);

INSERT INTO recipeOccasion(recipe_id, occasion_id)
VALUES
    (1, 1),
    (1, 2);

INSERT INTO ingredient(name, description, imageURL)
VALUES
    ('Sadness', 'Losing your job hurts', null),
    ('Determination', 'You can''t sleep until you''ve achieved your goal', null);

INSERT INTO step(recipe_id, ingredient_id, step_number, description)
VALUES
    (1, 1, 1, 'Take full measure of sadness and put it in mixing bowl'),
    (1, 2, 2, 'Add determination and mix until you feel better'),
    (1, null, 3, 'Go to DevMountain and learn some skills'),
    (1, null, 4, 'Stay up all night boosting your portfolio'),
    (1, null, 5, 'Get another job and get promoted to senior dev');

INSERT INTO grocerylistIngredient(grocerylist_id, ingredient_id)
VALUES
    (2, 1),
    (2, 2);

INSERT INTO recipeIngredient(recipe_id, ingredient_id)
VALUES
    (1, 1),
    (1, 2);