@echo off
rem START or STOP Services
rem ----------------------------------
rem Check if argument is STOP or START

if not ""%1"" == ""START"" goto stop

if exist C:\Users\Vinu\Desktop\Github\newgt\xamp\hypersonic\scripts\ctl.bat (start /MIN /B C:\Users\Vinu\Desktop\Github\newgt\xamp\server\hsql-sample-database\scripts\ctl.bat START)
if exist C:\Users\Vinu\Desktop\Github\newgt\xamp\ingres\scripts\ctl.bat (start /MIN /B C:\Users\Vinu\Desktop\Github\newgt\xamp\ingres\scripts\ctl.bat START)
if exist C:\Users\Vinu\Desktop\Github\newgt\xamp\mysql\scripts\ctl.bat (start /MIN /B C:\Users\Vinu\Desktop\Github\newgt\xamp\mysql\scripts\ctl.bat START)
if exist C:\Users\Vinu\Desktop\Github\newgt\xamp\postgresql\scripts\ctl.bat (start /MIN /B C:\Users\Vinu\Desktop\Github\newgt\xamp\postgresql\scripts\ctl.bat START)
if exist C:\Users\Vinu\Desktop\Github\newgt\xamp\apache\scripts\ctl.bat (start /MIN /B C:\Users\Vinu\Desktop\Github\newgt\xamp\apache\scripts\ctl.bat START)
if exist C:\Users\Vinu\Desktop\Github\newgt\xamp\openoffice\scripts\ctl.bat (start /MIN /B C:\Users\Vinu\Desktop\Github\newgt\xamp\openoffice\scripts\ctl.bat START)
if exist C:\Users\Vinu\Desktop\Github\newgt\xamp\apache-tomcat\scripts\ctl.bat (start /MIN /B C:\Users\Vinu\Desktop\Github\newgt\xamp\apache-tomcat\scripts\ctl.bat START)
if exist C:\Users\Vinu\Desktop\Github\newgt\xamp\resin\scripts\ctl.bat (start /MIN /B C:\Users\Vinu\Desktop\Github\newgt\xamp\resin\scripts\ctl.bat START)
if exist C:\Users\Vinu\Desktop\Github\newgt\xamp\jboss\scripts\ctl.bat (start /MIN /B C:\Users\Vinu\Desktop\Github\newgt\xamp\jboss\scripts\ctl.bat START)
if exist C:\Users\Vinu\Desktop\Github\newgt\xamp\jetty\scripts\ctl.bat (start /MIN /B C:\Users\Vinu\Desktop\Github\newgt\xamp\jetty\scripts\ctl.bat START)
if exist C:\Users\Vinu\Desktop\Github\newgt\xamp\subversion\scripts\ctl.bat (start /MIN /B C:\Users\Vinu\Desktop\Github\newgt\xamp\subversion\scripts\ctl.bat START)
rem RUBY_APPLICATION_START
if exist C:\Users\Vinu\Desktop\Github\newgt\xamp\lucene\scripts\ctl.bat (start /MIN /B C:\Users\Vinu\Desktop\Github\newgt\xamp\lucene\scripts\ctl.bat START)
if exist C:\Users\Vinu\Desktop\Github\newgt\xamp\third_application\scripts\ctl.bat (start /MIN /B C:\Users\Vinu\Desktop\Github\newgt\xamp\third_application\scripts\ctl.bat START)
goto end

:stop
echo "Stopping services ..."
if exist C:\Users\Vinu\Desktop\Github\newgt\xamp\third_application\scripts\ctl.bat (start /MIN /B C:\Users\Vinu\Desktop\Github\newgt\xamp\third_application\scripts\ctl.bat STOP)
if exist C:\Users\Vinu\Desktop\Github\newgt\xamp\lucene\scripts\ctl.bat (start /MIN /B C:\Users\Vinu\Desktop\Github\newgt\xamp\lucene\scripts\ctl.bat STOP)
rem RUBY_APPLICATION_STOP
if exist C:\Users\Vinu\Desktop\Github\newgt\xamp\subversion\scripts\ctl.bat (start /MIN /B C:\Users\Vinu\Desktop\Github\newgt\xamp\subversion\scripts\ctl.bat STOP)
if exist C:\Users\Vinu\Desktop\Github\newgt\xamp\jetty\scripts\ctl.bat (start /MIN /B C:\Users\Vinu\Desktop\Github\newgt\xamp\jetty\scripts\ctl.bat STOP)
if exist C:\Users\Vinu\Desktop\Github\newgt\xamp\hypersonic\scripts\ctl.bat (start /MIN /B C:\Users\Vinu\Desktop\Github\newgt\xamp\server\hsql-sample-database\scripts\ctl.bat STOP)
if exist C:\Users\Vinu\Desktop\Github\newgt\xamp\jboss\scripts\ctl.bat (start /MIN /B C:\Users\Vinu\Desktop\Github\newgt\xamp\jboss\scripts\ctl.bat STOP)
if exist C:\Users\Vinu\Desktop\Github\newgt\xamp\resin\scripts\ctl.bat (start /MIN /B C:\Users\Vinu\Desktop\Github\newgt\xamp\resin\scripts\ctl.bat STOP)
if exist C:\Users\Vinu\Desktop\Github\newgt\xamp\apache-tomcat\scripts\ctl.bat (start /MIN /B /WAIT C:\Users\Vinu\Desktop\Github\newgt\xamp\apache-tomcat\scripts\ctl.bat STOP)
if exist C:\Users\Vinu\Desktop\Github\newgt\xamp\openoffice\scripts\ctl.bat (start /MIN /B C:\Users\Vinu\Desktop\Github\newgt\xamp\openoffice\scripts\ctl.bat STOP)
if exist C:\Users\Vinu\Desktop\Github\newgt\xamp\apache\scripts\ctl.bat (start /MIN /B C:\Users\Vinu\Desktop\Github\newgt\xamp\apache\scripts\ctl.bat STOP)
if exist C:\Users\Vinu\Desktop\Github\newgt\xamp\ingres\scripts\ctl.bat (start /MIN /B C:\Users\Vinu\Desktop\Github\newgt\xamp\ingres\scripts\ctl.bat STOP)
if exist C:\Users\Vinu\Desktop\Github\newgt\xamp\mysql\scripts\ctl.bat (start /MIN /B C:\Users\Vinu\Desktop\Github\newgt\xamp\mysql\scripts\ctl.bat STOP)
if exist C:\Users\Vinu\Desktop\Github\newgt\xamp\postgresql\scripts\ctl.bat (start /MIN /B C:\Users\Vinu\Desktop\Github\newgt\xamp\postgresql\scripts\ctl.bat STOP)

:end

