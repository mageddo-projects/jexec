@echo off

set REQUIRED_JRE=14
set JAR="app.jar"

IF EXIST java-home.txt (
  for /f %%h in (java-home.txt) do (
    "%%h/bin/java" -jar "%JAR%"
    exit /b
  )
) ELSE (
  set /P "input="
  echo %input%
@REM   set /P "inputEnter a JRE %REQUIRED_JRE% HOME path or set it in java-home.txt file :

@REM   cat %input% > java-home.txt
)
