IF NOT EXISTS (	SELECT object_id FROM sys.tables
			WHERE name = 'TestResults'
			AND SCHEMA_NAME(schema_id) = 'dbo'
			)
	BEGIN;
		CREATE TABLE [dbo].[TestResults]
			(
				ID INT IDENTITY(1,1) NOT NULL,
				TestNumber NVARCHAR(20) NOT NULL,
				TestResult NVARCHAR(10) NOT NULL,
				MethodName NVARCHAR(128) NOT NULL,
				TestName NVARCHAR(MAX) NOT NULL,
				[RunDatetime] DATETIME2 NOT NULL DEFAULT GETDATE()
				CONSTRAINT [TestResults_ID_PK] PRIMARY KEY CLUSTERED 
				(
					ID ASC
				) 
			)
	END;