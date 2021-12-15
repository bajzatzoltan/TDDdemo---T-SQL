IF EXISTS (	SELECT object_id FROM sys.tables
			WHERE name = 'TestResults'
			AND SCHEMA_NAME(schema_id) = 'dbo'
			)
	BEGIN;
		DROP TABLE [dbo].[TestResults]
	END;