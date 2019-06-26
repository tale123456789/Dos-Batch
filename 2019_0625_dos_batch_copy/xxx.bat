@echo off
 for %%i in (./list/*.txt) do echo %%i
 rem for /l %%i in (1,1,5) do @echo %%i
 rem for %%i in (./list/*.txt) do echo %%~ni
 for %%i in (./list/*.txt) do copy sample.tif .\tif\%%~ni.tif
pause