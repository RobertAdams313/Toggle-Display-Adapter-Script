
@echo off
:: Batch file to run PowerShell script as Administrator
set script="C:\ToggleDisplayAdapter.ps1"

:: Run the script as Administrator
powershell -Command "Start-Process PowerShell -ArgumentList '-ExecutionPolicy Bypass -File %script%' -Verb RunAs"
