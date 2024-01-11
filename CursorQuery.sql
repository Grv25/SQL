DECLARE @number FLOAT

DECLARE @curs CURSOR

SET @curs = CURSOR SCROLL FOR
SELECT Idorder FROM dbo.view_orders

OPEN @curs

FETCH NEXT FROM @curs INTO @number

WHILE @@FETCH_STATUS = 0 
BEGIN
	IF @number < 102 AND @number = 101
	BEGIN
		PRINT @number  
		PRINT @number 
	END
	
	FETCH NEXT FROM @curs INTO @number
END

CLOSE @curs

DEALLOCATE @curs