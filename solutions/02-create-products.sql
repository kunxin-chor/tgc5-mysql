USE examples;
CREATE TABLE `products` (
  `id` INT AUTO_INCREMENT PRIMARY KEY,
  `title` VARCHAR(255) NOT NULL,
  `price` FLOAT NOT NULL,
  `description` TEXT NOT NULL,
  `quantity_left` INT DEFAULT 0,
  `date_added` DATETIME NOT NULL
);

INSERT INTO `products` 
	(`title`, `price`, `description`, `quantity_left`, `date_added`)
VALUES
	('Banana Milk Tea', '10.90', 'Milk tea with banana flavor', 30, NOW()),
    ('Organic Watermelon Seeds', '4.99', 'Watermelon seeds', 30, NOW()),
    ('Chocolate milkshake protein bar', '20.99', 'For cheating', 45, Now());