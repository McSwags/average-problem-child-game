REM THIS IS TO BE IMPLEMENTED ONCE THE PROJECT IS BUILT UNTIL THEN IT DOESNT DO ANYTHING

SET F="PJMonkey.jpg"

IF EXIST %F% (
  ECHO %F% is existing
  REM REPLACE WITH RUN GAME.EXE for example 'start "" C:\Users\%USER%\...\FBLA.exe'
) ELSE (
	REM burn that shit down
	@echo off
	:crash
	start
	goto crash

)
