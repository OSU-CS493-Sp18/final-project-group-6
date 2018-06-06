DROP TABLE IF EXISTS `beers`;

-- Businesses table --
CREATE TABLE beers (
    id int NOT NULL AUTO_INCREMENT,
    manufacturerid int NOT NULL,
    name VARCHAR(255) NOT NULL,
    abv real NOT NULL,
    ibu INT NOT NULL,
    calories int NOT NULL,
    type VARCHAR(255) NOT NULL,
    PRIMARY KEY(id),
    INDEX idx_manufacturerid (manufacturerid)
  );


-- Insert initial values into businesses table --
INSERT INTO beers (manufacturerid, name, abv, ibu, calories, type)
VALUES
('0', 'Pacifico', '5', '6', '146', 'pilsner');