@echo off
set PN=perl.exe 
set epg_dir=%cd%
rem �஢�ਬ, �᫨ ����饭 perl.exe ��⠭���� ���
TaskList /FI "ImageName EQ %PN%" 2>nul|Find /I "%PN%">nul||(taskkill /f /IM %PN%)

mode con cols=100 lines=25
title EPG ( �� ����뢠�� )

dir %epg%\tmp /a-d >nul 2>nul && (del /Q %epg%\tmp\*.sqlite)

%epg_dir%\perl\perl.exe -w %epg_dir%\OpenEPG.pl
