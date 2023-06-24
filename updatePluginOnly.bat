@ECHO OFF

set source=%CD%
set server="%source%\_server\server"
set source_name=%source%
for %%* in (.) do set source_name=%%~n*

rem usually you shouldn't have to edit these
set javah=%JAVA_HOME%

rem clean + package the project
call mvn clean
call mvn package
rem move the plugin the the server
del /q "%source%\target\%source_name%-*-shaded.jar"
del /q "%server%\plugins\%source_name%-*.jar"
xcopy "%source%\target\%source_name%-*.jar" "%server%\plugins" /y /s
