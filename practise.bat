@echo off
:start
echo -create(to create password)
echo -check(to reconfirm the password)
echo.
pause
set /p program=do you want to create or check password ?:
goto %program%
            



:create
set /p Password=What password do you want to set??
echo %Password%>C:\Users\a.c.roychowdhury\Documents\practise\practise1.txt
pause
goto check




:check
set /p RPassword=Reenter your password:
for /f "Delims=" %%a in (practise1.txt) do (
set TEXT=%%a
)
if %RPassword%==%TEXT% goto correct 
echo you are wrong,Try again
pause 
goto check


:correct
echo your password is correct



 
