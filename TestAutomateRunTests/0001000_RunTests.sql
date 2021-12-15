
:SETVAR WorkDirectory "C:\Users\Bajzat.Zoltan\source\repos\" --YOU NEED TO SET PATH OF ENVIROMENT
:SETVAR TestEnviromentDirectory "TDDdemo\TestAutomateRunTests\00050_TestEnviroment\"
:SETVAR RunFile "Run_These_SQL_Files.txt"

!!DEL $(WorkDirectory)$(TestEnviromentDirectory)$(RunFile)

!!FOR /F "usebackq tokens=*" %a in (`dir /b $(WorkDirectory)$(TestEnviromentDirectory)*.sql /on`) DO @ECHO :r "$(WorkDirectory)$(TestEnviromentDirectory)%a">> $(WorkDirectory)$(TestEnviromentDirectory)$(RunFile)

:r $(WorkDirectory)$(TestEnviromentDirectory)$(RunFile)
GO

BEGIN
	TRUNCATE TABLE dbo.TestResults
	DBCC CHECKIDENT ('dbo.TestResults', RESEED, 1) WITH NO_INFOMSGS
END
GO

:SETVAR ProgramObjectsDirectory "TDDdemo\TestAutomateRunTests\00500_Programming_objects\"
:SETVAR RunFile "Run_These_SQL_Files.txt"

!!DEL $(WorkDirectory)$(ProgramObjectsDirectory)$(RunFile)

!!FOR /F "usebackq tokens=*" %a in (`dir /b $(WorkDirectory)$(ProgramObjectsDirectory)*.sql /on`) DO @ECHO :r "$(WorkDirectory)$(ProgramObjectsDirectory)%a">> $(WorkDirectory)$(ProgramObjectsDirectory)$(RunFile)

:r $(WorkDirectory)$(ProgramObjectsDirectory)$(RunFile)
GO

BEGIN
	SELECT * FROM TestResults
END
GO



