USE `examples`;

CREATE TABLE IF NOT EXISTS `users` (
  user_id INT AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  joined_date DATETIME
 );
  
 INSERT INTO `users`(`first_name`,`last_name`,`joined_date`)
  VALUES ('Ah Kow', 'Tan', NOW()),
         ('Cindy', 'Loh', NOW());