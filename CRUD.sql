--------------------------------- CRUD Operation -------------------------------------------------------------------------

-- SELECT * FROM stores

-- UPDATE stores SET city = 'Agra',state ='UP' WHERE city = 'Delhi';

-- SELECT * FROM stores

-- INSERT INTO stores
-- (store_name, phone, email, street, city, state, zip_code)
-- VALUES
-- ('Factory Store', '8888888888', 'branch@store.com', 'Park Street', 'Banglore', 'KA', '400001'),
-- ('City Store', '7777777777', 'city@store.com', 'Sector 18', 'Noida', 'UP', '201301');

-- SELECT * FROM stores

-- DELETE FROM dbo.stores
-- WHERE store_id = 1004;

-- DELETE FROM dbo.stores
-- WHERE store_id = 1005;

-- SELECT * FROM stores


-- CREATE PROCEDURE sp_Stores_CRUD
-- (
--     @Action     VARCHAR(10),

--     @store_id   INT = NULL,
--     @store_name VARCHAR(100) = NULL,
--     @phone      VARCHAR(20) = NULL,
--     @email      VARCHAR(100) = NULL,
--     @street     VARCHAR(100) = NULL,
--     @city       VARCHAR(50) = NULL,
--     @state      VARCHAR(50) = NULL,
--     @zip_code   VARCHAR(10) = NULL
-- )
-- AS
-- BEGIN
--     SET NOCOUNT ON;

--     -- ================= INSERT =================
--     IF @Action = 'INSERT'
--     BEGIN
--         INSERT INTO dbo.stores
--         (store_name, phone, email, street, city, state, zip_code)
--         VALUES
--         (@store_name, @phone, @email, @street, @city, @state, @zip_code);
--     END

--     -- ================= SELECT =================
--     ELSE IF @Action = 'SELECT'
--     BEGIN
--         SELECT * FROM dbo.stores;
--     END

--     -- ================= UPDATE =================
--     ELSE IF @Action = 'UPDATE'
--     BEGIN
--         UPDATE dbo.stores
--         SET city = @city,
--             state = @state
--         WHERE store_id = @store_id;
--     END

--     -- ================= DELETE =================
--     ELSE IF @Action = 'DELETE'
--     BEGIN
--         DELETE FROM dbo.stores
--         WHERE store_id = @store_id;
--     END
-- END
-- GO

-- EXEC sp_Stores_CRUD 
--     @Action = 'INSERT',
--     @store_name = 'Round Sqayre',
--     @phone = '88833333338',
--     @email = 'Round@store.com',
--     @street = 'Park Street',
--     @city = 'Gurgaon',
--     @state = 'HR',
--     @zip_code = '401001';

-- EXEC sp_Stores_CRUD @Action = 'SELECT';

-- EXEC sp_Stores_CRUD 
--     @Action = 'UPDATE',
--     @store_id = 1,
--     @city = 'Jalandhar',
--     @state = 'PB';

-- EXEC sp_Stores_CRUD 
--     @Action = 'DELETE',
--     @store_id = 1004;


SELECT * FROM stores

