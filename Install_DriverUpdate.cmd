@echo off

setlocal enabledelayedexpansion

for /f "skip=1 tokens=*" %%b in ('wmic csproduct get vendor') do ( set "manufacturer=%%b" & goto :manufacturer )

:manufacturer

set "manufacturer=!manufacturer: =!"

echo Fabricante: %manufacturer%

echo.

if "%manufacturer%" equ "DellInc." ( echo Instalando o software de drivers Dell Command Update... & "Y:\Applications\Dell Command Update\DellCommandUpdateApp_Setup.exe" /S /v/qn )

if "%manufacturer%" equ "LENOVO" ( echo Instalando o software de drivers Lenovo System Update... & "Y:\Applications\Lenovo System Update\system_update_5.08.02.25.exe" /SP- /VERYSILENT /NORESTART )

if "%manufacturer%" equ "Hewlett-Packard" ( echo Instalando o software de drivers HP... )

if "%manufacturer%" equ "HP" ( echo Instalando o software de drivers HP... )

if "%manufacturer%" equ "AvellHighPerformance" ( echo Instalando o software de drivers Avell... )

if "%manufacturer%" equ "Avell" ( echo Instalando o software de drivers Avell... )