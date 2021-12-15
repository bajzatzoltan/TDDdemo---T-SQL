﻿-------------------------------------------------
--SET PATH OF SOLUTION IN DIRECTORY STRUCTURE:
-------------------------------------------------
:SETVAR WorkDirectory "...\" --YOU NEED TO SET PATH OF ENVIROMENT E.G. C:\DEMO

-------------------------------------------------
--DELETE TEST ENVIROMENT:
-------------------------------------------------
:SETVAR TestEnviromentDirectory "TDDdemo\TestAutomateRunTests\09000_Delete_TestEnviroment\"
:SETVAR RunFile "Run_These_SQL_Files.txt"

!!DEL $(WorkDirectory)$(TestEnviromentDirectory)$(RunFile)

!!FOR /F "usebackq tokens=*" %a in (`dir /b $(WorkDirectory)$(TestEnviromentDirectory)*.sql /on`) DO @ECHO :r "$(WorkDirectory)$(TestEnviromentDirectory)%a">> $(WorkDirectory)$(TestEnviromentDirectory)$(RunFile)

:r $(WorkDirectory)$(TestEnviromentDirectory)$(RunFile)