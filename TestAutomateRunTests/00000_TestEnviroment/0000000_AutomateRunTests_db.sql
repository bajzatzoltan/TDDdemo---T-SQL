BEGIN;
    SET NOCOUNT ON;
    IF NOT EXISTS 
       (SELECT name FROM master.dbo.sysdatabases 
        WHERE name = N'AutomateRunTests')
        BEGIN;
            CREATE DATABASE AutomateRunTests;
        END
    ELSE
        BEGIN;
            PRINT 'Database AutomateRunTests already exist!';
        END;
END;