@echo off

set REQUIRED_JRE=14
set JVM_ARGS=""
set JAR="app.jar"

IF EXIST java-home.txt (
  for /f %%h in (java-home.txt) do (
    "%%h/bin/java" -version
    "%%h/bin/java" "%JVM_ARGS%" -jar "%JAR%"
@REM     "%%h%/bin/java" "%JVM_ARGS%" -jar "%JAR%"
    exit /b
  )
@REM   %JAVA_HOME2%/bin/java -version
) ELSE (

  @REM   set /p "id=Enter a JRE HOME path"
  @REM   echo filename.txt missing.
  set /p JAVA_HOME= "Enter a JRE %REQUIRED_JRE% HOME path (or set it in .java-home file): "

)
