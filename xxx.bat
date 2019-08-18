@echo off 
 set pdf_path=C:\Users\LUKE\Desktop\A
 set tpk_path=C:\Users\LUKE\Desktop\B
 set pdf_file=C:\Users\LUKE\Desktop\pdf.txt
 set tpk_file=C:\Users\LUKE\Desktop\tpk.txt
 set yesterday=2019/08/17
 
 rem echo %pdf_path%
 rem echo %tpk_path%
 rem echo %yesterday%
 del %pdf_file%
 del %tpk_file%
 
 forfiles /p %pdf_path% /d -"%yesterday%" /c "cmd /c echo @FNAME @FILE @FDATE @FTIME >> %pdf_file%" 
 forfiles /p %tpk_path% /d -"%yesterday%" /c "cmd /c echo @FNAME @FILE @FDATE @FTIME >> %tpk_file%" 
 
 rem dir /o:dn %pdf_path% > pdf.txt
 rem dir /o:dn %tpk_path% > tpk.txt
 
 rem for %%i in (./A/*) do echo %%~i 
 rem forfiles /C "cmd /c echo @file @fdate @ftime"
 rem for %%i in (./B/*) do echo %%~ci
 rem for /l %%i in (1,1,5) do @echo %%i
 rem for %%i in (./list/*.txt) do echo %%~ni
 rem for %%i in (./list/*.txt) do copy sample.tif .\tif\%%~ni.tif
pause