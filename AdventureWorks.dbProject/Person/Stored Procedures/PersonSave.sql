CREATE PROCEDURE dbo.PersonSave
	@BusinessEntityID int,
	@FirstName varchar(128),
	@LastName varchar(128)
AS
	If (@BusinessEntityID is null)
		Insert into Person.Person (BusinessEntityID, FirstName, LastName)
			Values (1, @FirstName, @LastName)
	Else 
		Update Person.Person 
			Set FirstName = @FirstName,
			LastName = @LastName
			Where BusinessEntityID = @BusinessEntityID
		
RETURN 0
