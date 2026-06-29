--  1. Creating the table 

CREATE TABLE books(
book_id INT auto_increment,
title VARCHAR(100),
isbn VARCHAR(20) unique,
price DECIMAL(10,2),
published_date DATE,
in_stock INT DEFAULT 1 ,
PRIMARY KEY(book_id));

-- 2. Inserting Data

INSERT INTO books (title, isbn, price, published_date, in_stock)
VALUES
('Mahabharat', '8237641676487', 590.99, '2006-04-03', 1),
('Khuran', '92452353555345', 450.50, '2009-05-15', 1),
('Bible', '215124542555', 500.00, '2001-03-19', 0),
('Sayings of Buddha', '52125254645', 602.00, '2020-11-12', 1);

INSERT INTO books (title, isbn, price, published_date)
VALUES
('God Of Death', '9788432964985', 399.00, '2017-08-29');

-- 3. Renaming a Column

ALTER TABLE books
RENAME COLUMN title TO book_title;

select * from books;

-- 4. Changing a Column

ALTER TABLE books
MODIFY COLUMN price FLOAT;

desc books;

-- Adding a New Column 

ALTER TABLE books
ADD COLUMN author_name VARCHAR(50) NOT NULL DEFAULT 'Unknown';

-- 6. Updating Existing Data

UPDATE books
SET price = price * 0.9
WHERE published_date < '2020-01-01'; 

-- 7. Deleting Specific Records

DELETE FROM books
WHERE book_id > 0
AND in_stock = 0;
  
  -- 8.Resetting the Auto Increment value
  
ALTER TABLE books
AUTO_INCREMENT = 101;

-- 9.Conditonal select

ALTER TABLE books
AUTO_INCREMENT = 101;

-- 10. Working of second table

CREATE TABLE Members (
    member_id INT AUTO_INCREMENT ,
    member_name VARCHAR(100) NOT NULL,
    join_date DATE NOT NULL DEFAULT (CURRENT_DATE),
    primary key (member_id)
);

SELECT *
FROM Members
WHERE YEAR(join_date) = 2024
ORDER BY member_name ASC;

select * from Members;
