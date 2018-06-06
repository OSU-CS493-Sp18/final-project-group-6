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
('0', 'Pacifico', '5.4', '6', '146', 'Pilsner'),
('1', 'Fat Tire', '5.2', '22', '160', 'Belgian Style Ale'),
('2', 'VooDoo Ranger', '7.0', '50', '160', 'IPA'),
('3', 'Citradelic', '6', '50', '170', 'Tangerine IPA'),
('4', 'Juice Haze IPA', '7.2', '42', '230', 'IPA'),
('5', 'Coors Light', '4.2', '10', '102', 'Lager'),
('6', 'Guiness', '4.2', '45', '125', 'Stout'),
('7', 'Kiwanda', '5.4', '25', '125', 'Cream Ale'),
('8', 'Umbrella', '7.4', '60', '160', 'Pale Ale'),
('9', 'Tsunami', '7', '45', '170', 'stout');


