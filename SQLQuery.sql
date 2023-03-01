WITH numbers AS (
  SELECT ROW_NUMBER() OVER () AS n
  FROM sys.objects
)

SELECT n
FROM numbers
WHERE n <= 100 AND n % 2 = 0;

---Q1---
CREATE PROCEDURE display_even_numbers_below_100
AS
BEGIN
  DECLARE @n INT = 0;
  WHILE @n < 100
  BEGIN
    IF @n % 2 = 0
      PRINT @n;
    SET @n = @n + 1;
  END;
END;

---Q2---
BEGIN
  DECLARE @n INT = 0;
  WHILE @n < 100
  BEGIN
    IF @n % 1 = 0
      PRINT @n;
    SET @n = @n + 1;
  END;
END;
---Q3---
CREATE PROCEDURE check_prime_number @n INT
AS
BEGIN
  DECLARE @is_prime BIT = 1;
  DECLARE @i INT = 2;
  WHILE @i < @n
  BEGIN
    IF @n % @i = 0
    BEGIN
      SET @is_prime = 0;
      BREAK;
    END;
    SET @i = @i + 1;
  END;
  IF @is_prime = 1
    PRINT @n + ' is a prime number';
  ELSE
    PRINT @n + ' is not a prime number';
END;
---Q4---
CREATE PROCEDURE display_sum_of_10_numbers
AS
BEGIN
  DECLARE @i INT = 1;
  DECLARE @sum INT = 0;
  WHILE @i <= 10
  BEGIN
    DECLARE @n INT;
    SET @n = CAST(CONVERT(VARCHAR(10), NEWID(), 1) AS INT) % 100;
    PRINT 'Number ' + CAST(@i AS VARCHAR) + ': ' + CAST(@n AS VARCHAR);
    SET @sum = @sum + @n;
    SET @i = @i + 1;
  END;
  PRINT 'Sum of the numbers: ' + CAST(@sum AS VARCHAR);
END;
---Q5---
CREATE PROCEDURE display_multiples_between_numbers @n1 INT, @n2 INT
AS
BEGIN
  DECLARE @i INT = @n1;
  WHILE @i <= @n2
  BEGIN
    DECLARE @j INT = 1;
    PRINT 'Multiples of ' + CAST(@i AS VARCHAR) + ':';
    WHILE @j <= 20
    BEGIN
      PRINT CAST(@i * @j AS VARCHAR);
      SET @j = @j + 1;
    END
