CREATE TABLE [dbo].[FizzBuzzResult]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [NumberParameter] INT NOT NULL, 
    [FizzBuzzResult] NCHAR(8) NOT NULL
)