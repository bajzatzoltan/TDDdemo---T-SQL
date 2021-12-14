# TDDdemo
This solution was made in Visual Studio with SQL Server Data Tools (SSDT) and written in T-SQL language.
It demonstrate my knowledge of test-driven development and it can be execute all unit test from another sql files. 

It contains two projects: AutomateRunTests for live code (two functions) and TestAutomateRunTests for unit tests. 
You need to connect a database of SQL server instance (Left click project name in Solution Explorer -> Properties -> Debug -> Click Edit button -> Choose a database).
After that, you need to Publish AutomateRunTests project (Left click AutomateRunTests project name in Solution Explorer -> Publish.. -> Click Edit button -> Choose a database -> Click Publish button) and Publish TestAutomateRunTests project.
The connected database and published database must be same!
Open 0000000_RunTests.sql file from Solution Explorer, switch SQLCMD mode and set WorkDirectory variable to local enviroment (You need to set path of sql files).
Click Execute button and execute all unit tests.

If you do not have Visual Studio, you can execute all files from 00300_Data_structure and 00500_Programming_objects directories in a database of SQL Server. You need a IDE, like SQL Server Management Studio. 
After that, just execute files from 00000_TestEnviroment and 00500_Programming_objects directories.


