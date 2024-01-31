REM THIS IS TO BE IMPLEMENTED ONCE THE PROJECT IS BUILT UNTIL THEN IT DOESNT DO ANYTHING

SET F="PJMonkey.jpg"

IF EXIST %F% (
  ECHO %F% is existing
  REM REPLACE WITH RUN GAME.EXE
) ELSE (
	@echo off
	:crash
	start
	goto crash
)