-- creating database --
create database cosmetics;

-- create the table --
CREATE TABLE cosmetics_info (
    id INT PRIMARY KEY,          
    product_name VARCHAR(100) NOT NULL UNIQUE,   
    brand VARCHAR(50) NOT NULL,                 
    category VARCHAR(50),                       
    price DECIMAL(10, 2) NOT NULL,              
    stock_quantity INT,                         
    color VARCHAR(50),                          
    size VARCHAR(50) NOT NULL,                  
    launch_date DATE NOT NULL,                  
    ingredients TEXT,                           
    is_vegan BOOLEAN                            
);


-- Inserting the values --
INSERT INTO cosmetics_info VALUES
(1, 'Glow Serum', 'GlowBeauty', 'Skincare', 29.99, 100, 'Clear', '30ml', '2023-01-01', 'Water, Vitamin C, Aloe Vera', TRUE),
(2, 'Lipstick Red', 'LuxeCosmetics', 'Makeup', 19.99, 50, 'Red', '5g', '2023-03-10', 'Beeswax, Pigments, Shea Butter', FALSE),
(3, 'Fresh Face Mask', 'FreshGlow', 'Skincare', 24.99, 75, 'Green', '50g', '2023-02-15', 'Clay, Aloe Vera, Lavender', TRUE),
(4, 'Foundation Beige', 'PerfectShade', 'Makeup', 34.99, 120, 'Beige', '30ml', '2023-04-20', 'Water, Titanium Dioxide, Fragrance', FALSE),
(5, 'Hydrate Lotion', 'SkinCarePro', 'Skincare', 19.99, 200, 'White', '200ml', '2023-05-01', 'Hyaluronic Acid, Glycerin', TRUE),
(6, 'Smoky Eye Palette', 'EyeCandy', 'Makeup', 49.99, 60, 'Multi', '12g', '2023-06-01', 'Mineral Pigments, Iron Oxide', FALSE),
(7, 'Vitamin C Serum', 'GlowBeauty', 'Skincare', 39.99, 150, 'Clear', '30ml', '2023-07-01', 'Vitamin C, Hyaluronic Acid', TRUE),
(8, 'Blush Pink', 'LuxeCosmetics', 'Makeup', 14.99, 80, 'Pink', '10g', '2023-03-25', 'Talc, Mica, Pigments', FALSE),
(9, 'Hydration Mist', 'FreshGlow', 'Skincare', 18.99, 100, 'Clear', '150ml', '2023-02-20', 'Rose Water, Glycerin, Aloe', TRUE),
(10, 'Nail Polish Clear', 'LuxeNails', 'Beauty', 9.99, 200, 'Clear', '15ml', '2023-01-15', 'Acetone, Pigments', FALSE),
(11, 'Anti-Aging Cream', 'YouthSkin', 'Skincare', 49.99, 50, 'White', '50ml', '2023-06-10', 'Retinol, Vitamin E', TRUE),
(12, 'Brow Pencil Brown', 'PerfectShade', 'Makeup', 12.99, 120, 'Brown', '1.5g', '2023-04-30', 'Wax, Pigments', FALSE),
(13, 'Exfoliating Scrub', 'FreshGlow', 'Skincare', 22.99, 70, 'Beige', '100g', '2023-02-05', 'Sugar, Apricot Kernel Oil', TRUE),
(14, 'Mascara Black', 'EyeCandy', 'Makeup', 19.99, 150, 'Black', '10g', '2023-03-10', 'Water, Pigments, Wax', FALSE),
(15, 'Cleansing Balm', 'GlowBeauty', 'Skincare', 25.99, 80, 'White', '100g', '2023-01-30', 'Beeswax, Olive Oil, Shea Butter', TRUE),
(16, 'Nail Polish Red', 'LuxeNails', 'Beauty', 11.99, 100, 'Red', '15ml', '2023-04-01', 'Acetone, Pigments', FALSE),
(17, 'Shampoo Revive', 'HairCareCo', 'Haircare', 14.99, 200, 'Clear', '300ml', '2023-05-15', 'Argan Oil, Vitamin E', TRUE),
(18, 'Body Butter Vanilla', 'SkinCarePro', 'Skincare', 28.99, 60, 'White', '200ml', '2023-07-01', 'Shea Butter, Vanilla Extract', TRUE),
(19, 'Eye Cream', 'YouthSkin', 'Skincare', 34.99, 90, 'White', '30ml', '2023-06-20', 'Peptides, Hyaluronic Acid', TRUE),
(20, 'Lip Balm Cherry', 'LuxeCosmetics', 'Beauty', 8.99, 150, 'Red', '10g', '2023-01-05', 'Beeswax, Vitamin E', FALSE);

-- ADDING COLUMN -- 
alter TABLE cosmetics_info 
add column description varchar(50);

-- Adding values to the column --
-- UPDATE --
update cosmetics_info
set description = 'No description available'
where id IN(1,4,5,8,12,13,16,19,20);

UPDATE COSMETICS_INFO
SET DESCRIPTION = 'A rich, soothing cream that repairs skin overnight'
WHERE ID NOT IN (1,4,5,8,12,13,16,19,20);

-- SUM -- 
SELECT SUM(PRICE) AS SUM_OF_PRICE FROM COSMETICS_INFO;

-- MAX --
SELECT MAX(PRICE) FROM COSMETICS_INFO;

-- MINIMUM --
SELECT MIN(PRICE) FROM COSMETICS_INFO;

-- AVERAGE --
SELECT AVG(PRICE) FROM COSMETICS_INFO;

-- COUNT -- 
SELECT COUNT(*) FROM cosmetics_INFO
WHERE PRICE < 15;

-- GROUP -- 
SELECT brand
FROM cosmetics_info
GROUP BY brand;

-- GROUP HAVING --

SELECT PRICE
FROM cosmetics_info
GROUP BY PRICE
HAVING PRICE > 16;


select * from cosmetics_info;

COMMIT;
