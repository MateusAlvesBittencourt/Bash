@echo off
chcp 1252
color b
mode con: cols=80 lines=25

cls
echo  ==============================================================================
echo                                 Reboot Machine
echo  ==============================================================================
echo                        Reinicia um computador remotamente
echo  ==============================================================================

set /p computer=Patrimonio: 

echo.
echo Domínio:
echo.
echo (1) portoalegre
echo (2) pucrsnet
echo (3) saolucas
echo.

set /p domain=opção: 

if %domain% equ 1 (set domain=portoalegre.pucrsnet.br)
if %domain% equ 2 (set domain=pucrsnet.br)
if %domain% equ 3 (set domain=saolucas.pucrsnet.br)

shutdown -r -t 01 -f -m \\%computer%.%domain%

:loop
cls
echo  ==============================================================================
echo                                 Reboot Machine
echo  ==============================================================================
echo                        Reinicia um computador remotamente
echo  ==============================================================================
echo.

ping -n 1 %computer%.%domain% >NUL

if %errorlevel% == 0 echo Estação %computer%.%domain% ligada
if %errorlevel% == 1 echo Estação %computer%.%domain% desligada

ping -n 2 localhost >NUL
goto loop