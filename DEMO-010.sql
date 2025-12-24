DELETE FROM ORDER_ITEM
WHERE ProductID IN (
    SELECT p.ProductID
    FROM PRODUCT p
    JOIN CATEGORY c ON p.CategoryID = c.CategoryID
    WHERE p.Discontinued = 1
       OR c.CategoryName = 'Obsolete'
);
