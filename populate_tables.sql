DROP TABLE IF EXISTS `beers`;

-- Beers table --
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


DROP TABLE IF EXISTS `reviews`;

-- Reviews table --
CREATE TABLE reviews (
  id INT NOT NULL AUTO_INCREMENT,
  dollars INT NOT NULL,
  stars real NOT NULL,
  review VARCHAR(255),
  userid INT NOT NULL,
  beerid INT NOT NULL,
  PRIMARY KEY (id),
  INDEX idx_beerid (beerid),
  FOREIGN KEY(beerid) REFERENCES beers(id) ON DELETE CASCADE
) ENGINE=INNODB;

INSERT INTO reviews(dollars, stars, review, userid, beerid)
values
('1', '4.5', 'Cheap, delicious beer.', '1', '10'),
('2', '3.5', '', '2', '1'),
('1', '3.5', 'Try the IPA.', '3', '2'),
('3', '4.5', 'Try the Pale Ale.', '4', '3'),
('3', '5', 'BEST BEER', '5', '4'),
('2', '3', 'Beer was okay', '6', '5'),
('2', '3.5', '', '7', '6'),
('3', '4.5', '', '8', '7'),
('1', '2.5', 'Bad Beer', '9', '8'),
('2', '3.5', '', '10', '9'),
('2', '1', 'Cheap, not ideal.', '1', '22'),
('2', '1', 'Do not drink this', '2', '23'),
('2', '1', 'Try the IPA.', '3', '24'),
('1', '2', 'Try the Pale Ale.', '4', '22'),
('1', '2', 'BEST BEER', '5', '25'),
('1', '2', 'Beer was okay', '6', '32'),
('2', '3.5', 'Solid beer, but expensive', '7', '39'),
('2', '3', 'One of my favorite beers', '8', '42'),
('1', '3', 'Bad Beer', '9', '51'),
('2', '2', 'ayy good beer', '10', '69'),
('3', '1', 'This beer is very expensive.', '1', '34'),
('3', '1', 'Too expensive', '2', '33'),
('3', '1', 'Not my favorite beer for the price.', '3', '51'),
('3', '2', 'Try a different beer.', '4', '52'),
('3', '2', 'this beer wasnt for me', '5', '53'),
('3', '2', 'it was okay', '6', '54'),
('3', '1', 'ehhhhh', '8', '55'),
('3', '2', 'Bad Beer', '9', '56'),
('3', '2', 'okay beer', '10', '57'),
('1', '3', 'One of my favorite beers', '8', '58'),
('1', '3', 'Bad Beer', '9', '31'),
('1', '2', 'ayy good beer', '10', '20'),
('1', '1', 'This beer is very expensive.', '1', '23'),
('1', '1', 'Too expensive', '2', '44'),
('1', '1', 'Not my favorite beer for the price.', '3', '45'),
('1', '2', 'Try a different beer.', '4', '66'),
('1', '2', 'this beer wasnt for me', '5', '54'),
('1', '2', 'it was okay', '6', '44'),
('1', '1', 'ehhhhh', '8', '41'),
('1', '2', 'Bad Beer', '9', '39'),
('1', '2', 'okay beer', '10', '38');
  
-- Drop Manufacturers table --
DROP TABLE IF EXISTS `manufacturers`;

-- Create manufacturers table --
CREATE TABLE manufacturers (
  id INT NOT NULL AUTO_INCREMENT,
  beerid INT NOT NULL,
  city VARCHAR(255),
  state VARCHAR(255),
  zip INT NOT NULL,
  phonenumber VARCHAR(255) NOT NULL,
  PRIMARY KEY (id)
);

-- Insert into manufacturers --
INSERT INTO manufacturers(beerid, city, state, zip, phonenumber)
values
('10', 'Portland', 'Oregon', '97220', '5031234567'),
('2', 'Bend', 'Oregon', '97001', '5033214567'),
('3', 'Corvallis', 'Oregon', '97330', '5034444567'),
('4', 'Eugene', 'Oregon', '97401', '5035554567'),
('5', 'Tigad', 'Oregon', '97224', '5036664567'),
('6', 'Salem', 'Oregon', '97301', '5037774567'),
('7', 'Tualatin', 'Oregon', '97305', '5038884567'),
('8', 'West Linn', 'Oregon', '97036', '5039994567'),
('9', 'Vancouver', 'Washington', '98607', '5039999999');



