@echo off
 rem 電子保單pdf位罝
 set pdf_path=C:\Users\LUKE\Desktop\A
 
 rem 電子保單tpk位罝
 set tpk_path=C:\Users\LUKE\Desktop\B
 
 rem echo %pdf_path%
 rem echo %tpk_path%
 
 rem 取出電子保單pdf位罝中的檔案，時間由大到小排並存入 pdf.txt(與執行檔同資料夾)
 dir /o:dn %pdf_path% > pdf.txt
 rem 取出電子保單pdf位罝中的檔案，時間由大到小排並存入 pdf.txt(與執行檔同資料夾)
 dir /o:dn %tpk_path% > tpk.txt 
pause