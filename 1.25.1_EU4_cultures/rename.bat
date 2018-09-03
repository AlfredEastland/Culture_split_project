@echo off

	rem 启用"延缓环境变量扩充" 
	setlocal EnableDelayedExpansion 
	set a=1 
	rem 循环当前目录下所有图片的文件名，支持带空格的名称 
	for /f "delims=" %%i in ('dir /b *.txt') do ( 
	rem 如果没有相同的文件名，则继续 
	if not "%%~ni"=="%~n0" ( 
	if !a! LSS 10 (ren "%%i" "0!a!_.txt") else ren "%%i" "!a!_.txt" 
	rem 设置数值型变量a=a+1 
	set /a a+=1 
	) 
	) 

pause