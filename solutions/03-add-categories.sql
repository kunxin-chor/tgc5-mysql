use examples;

/* Important: this assume that you have created the product table from 02-create-products.sql */

/* we have to delete all existing products to add in a foreign key constraint */
DELETE FROM `products`;

/* create the categories */
CREATE TABLE `categories` (
  	`id` INT AUTO_INCREMENT PRIMARY KEY,
  	`reference_code` VARCHAR(50) NOT NULL,
  	`title` VARCHAR(255) NOT NULL
);

INSERT INTO `categories` 
	(`reference_code`, `title`)
VALUES
	('snacks', 'Healthy Snacks'),
    ('drinks', 'Drinks');

/* Alter the existing table to add in the foreign key */
ALTER TABLE `products`
    ADD `category_id` INT NOT NULL;

ALTER TABLE `products`
    ADD CONSTRAINT fk_product_category FOREIGN KEY (`category_id`) 
  	REFERENCES `categories`(`id`);

/* insert the products, this time with categories id */
INSERT INTO `products` 
	(`title`, `category_id`, `price`, `description`, `quantity_left`, `date_added`)
VALUES
	('Banana Milk Tea', '2', '10.90', 'Milk tea with banana flavor', 30, NOW()),
    ('Organic Watermelon Seeds', '1', '4.99', 'Watermelon seeds', 30, NOW()),
    ('Chocolate milkshake protein bar', '1', '20.99', 'For cheating', 45, Now());