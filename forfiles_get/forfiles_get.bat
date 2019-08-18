@echo off 
 rem 電子保單pdf位罝
 set pdf_path=C:\Users\LUKE\Desktop\A
 
 rem 電子保單tpk位罝
 set tpk_path=C:\Users\LUKE\Desktop\B
 
 rem 電子保單pdf產出檔名
 set pdf_file=C:\Users\LUKE\Desktop\pdf.txt
 
 rem 電子保單tpk產出檔名
 set tpk_file=C:\Users\LUKE\Desktop\tpk.txt
 
 rem 昨天
 set yesterday=2019/08/17
 
 rem echo %pdf_path%
 rem echo %tpk_path%
 rem echo %yesterday%
 
 rem 刪除檔案
 del %pdf_file%
 del %tpk_file%
 
 rem 執行
 forfiles /p %pdf_path% /d -"%yesterday%" /c "cmd /c echo @FNAME @FILE @FDATE @FTIME >> %pdf_file%" 
 forfiles /p %tpk_path% /d -"%yesterday%" /c "cmd /c echo @FNAME @FILE @FDATE @FTIME >> %tpk_file%" 
 
 
pause