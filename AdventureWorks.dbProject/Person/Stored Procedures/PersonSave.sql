CREATE PROCEDURE Person.PersonSave
	@BusinessEntityID int = Null,
	@FirstName varchar(128),
	@LastName varchar(128),
	@PersonType varchar(128)
AS
	If (@BusinessEntityID is null)
		Insert into Person.Person (BusinessEntityID, FirstName, LastName, PersonType)
			Values (1, @FirstName, @LastName, @PersonType)
	Else 
		Update Person.Person 
			Set FirstName = @FirstName,
			LastName = @LastName,
			PersonType = @PersonType
			Where BusinessEntityID = @BusinessEntityID
		
RETURN 0
