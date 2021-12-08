# TDDdemo
This solution was made in Visual Studio with SQL Server Data Tools (SSDT) and written in T-SQL language.
It demonstrate my knowledge of test-driven development and it can be execute all unit test from another sql files. 
It contains two projects: AutomateRunTests for live code (two function) and TestAutomateRunTests for unit tests. 
You need to connect a database of SQL server instance (Left click project name in Solution Explorer -> Properties -> Debug -> Click Edit button -> Choose a database)
After that you need to Publish AutomateRunTests (Left click AutomateRunTests project name in Solution Explorer -> Publish.. -> Click Edit button -> Choose a database -> Click Publish button)
The connected database and published database must be same.
Open 0000000_RunTests.sql file from Solution Explorer, switch SQLCMD mode and set WorkDirectory variable to local enviroment (You need to set path of sq. files)
Click Execute button and execute all unit tests.

If you do not have Visual Studio, you can run 0001000_dbo.GetFizzBuzzResult_udf.sql, 0002000_dbo.GetBuzzFizzResult_udf.sql file a database of SQL Server instance from another IDE, like SQL Server Management Studio. After that just run unit tests (0001000_tst_dbo.GetFizzBuzzResult_udf.sql, 0002000_tst_dbo.GetBuzzFizzResult_udf.sql)


