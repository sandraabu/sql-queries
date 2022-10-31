SELECT 
    Product.ProductID AS "ProductID"
    ,Product.Name AS "ProductName"
FROM Product
LEFT JOIN ProductSubcategory ON ProductSubcategory.ProductSubcategoryID = Product.ProductSubcategoryID
LEFT JOIN ProductCategory ON ProductCategory.ProductCategoryID = ProductSubcategory.ProductCategoryID
WHERE
    ProductSubcategory.Name IS NULL
    OR ProductCategory.Name IS NULL