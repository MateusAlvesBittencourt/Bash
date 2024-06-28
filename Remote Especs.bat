@echo off
setlocal enabledelayedexpansion

:: Properties
title REMOTE ESPECS by ER7
color F0
mode con: cols=77 lines=27

:begin
cls
echo =============================================================================
echo.
echo     лллл  лллл л   л  ллл  ллллл лллл    лллл  лллл лллл  лллл  ллл  лллл
echo     л   л л    лл лл л   л   л   л       л    л     л   л л    л    л
echo     лллл  ллл  л л л л   л   л   ллл     ллл   ллл  лллл  ллл  л     ллл
echo     л   л л    л   л л   л   л   л       л        л л     л    л        л
echo     л   л лллл л   л  ллл    л   лллл    лллл лллл  л     лллл  ллл лллл
echo.
echo =============================================================================
echo.                                 Feature:
echo          Display the hardware specifications of a remote hostname.
echo =============================================================================
echo.

:: Implementation
set /p host=Hostname/IP: 
echo.
echo Searching for device on the network. Please wait...
goto validate_connection

:validate_connection
ping -n 1 %host% >nul
if %errorlevel% equ 0 ( goto especs ) else ( goto error )

:especs
for /f "skip=1 tokens=*" %%a in ('wmic /node:%host% computersystem get manufacturer ^| findstr /r /v "^$"') do set "manufacturer=%%a"
for /f "skip=1 tokens=*" %%a in ('wmic /node:%host% computersystem get model ^| findstr /r /v "^$"') do set "model=%%a"
for /f "tokens=2 delims=[]" %%a in ('ping -4 %host% -n 1 ^| findstr /i "Resposta de"') do ( for /f "tokens=1" %%b in ("%%a") do set "ipv4=%%b" )
for /f "tokens=2 delims== " %%A in ('wmic /node:"%host%" nic where "NetEnabled=true" get MACAddress /format:list ^| find "="') do set "macAddress=%%A"
for /f "skip=1 tokens=*" %%a in ('wmic /node:%host% bios get serialnumber ^| findstr /r /v "^$"') do set "serialnumber=%%a"
for /f "skip=1 tokens=*" %%a in ('wmic /node:%host% cpu get name ^| findstr /r /v "^$"') do set "cpu=%%a"
for /f "tokens=1 delims=@" %%b in ("%cpu%") do set "cpu=%%b"
for /f "skip=1 tokens=*" %%a in ('wmic /node:%host% cpu get numberofcores ^| findstr /r /v "^$"') do set "numberofcores=%%a"
for /f "skip=1 tokens=*" %%a in ('wmic /node:%host% cpu get numberoflogicalprocessors ^| findstr /r /v "^$"') do set "numberoflogicalprocessors=%%a"
for /f "skip=1 tokens=*" %%a in ('wmic /node:%host% computersystem get totalphysicalmemory ^| findstr /r /v "^$"') do set "totalphysicalmemory=%%a"
for /f %%b in ('powershell "[math]::Ceiling([int64] %totalphysicalmemory% / 1GB)"') do set "memory_size=%%b"
for /f "skip=1 tokens=*" %%a in ('wmic /node:%host% diskdrive get size ^| findstr /r /v "^$"') do set "size=%%a"
for /f "skip=1 tokens=*" %%a in ('wmic /node:"%host%" diskdrive where index^=0 get model ^| findstr /r /v "^$"') do ( set "storage_model=%%a" )
for /f %%b in ('powershell "[math]::Ceiling([int64] %size% / 1GB)"') do set "storage_size=%%b"
for /f "skip=1 tokens=*" %%a in ('wmic /node:%host% os get caption ^| findstr /r /v "^$"') do set "caption=%%a"
for /f "skip=1 tokens=*" %%a in ('wmic /node:%host% os get osarchitecture ^| findstr /r /v "^$"') do set "osarchitecture=%%a"
for /f "skip=1 tokens=*" %%a in ('wmic /node:%host% os get buildnumber ^| findstr /r /v "^$"') do set "buildnumber=%%a"
for /f "skip=1 tokens=*" %%a in ('wmic /node:%host% computersystem get username ^| findstr /r /v "^$"') do set "username=%%a"

set "cpu_name=%cpu%"
set "cores=%numberofcores%"
set "threads=%numberoflogicalprocessors%"
set "systemoperation=%caption:Microsoft =%"
set "architecture=%osarchitecture%"
set "version=%buildnumber%"

set "capacities="
for /f "skip=1 tokens=*" %%a in ('wmic /node:%host% memorychip get capacity ^| findstr /r /v "^$"') do ( set "capacity=%%a" & for /f %%b in ('powershell "[math]::Ceiling([int64] !capacity! / 1GB)"') do set "capacityGB=%%b" & if not defined capacities ( set "capacities=!capacityGB! Gb" ) else ( set "capacities=!capacities!, !capacityGB! Gb" ))

:remove
if "%cpu_name:~-1%"==" " ( set "cpu_name=%cpu_name:~0,-1%" & goto remove )
if "%cores:~-1%"==" " ( set "cores=%cores:~0,-1%" & goto remove )
if "%threads:~-1%"==" " ( set "threads=%threads:~0,-1%" & goto remove )
if "%systemoperation:~-1%"==" " ( set "systemoperation=%systemoperation:~0,-1%" & goto remove )
if "%architecture:~-1%"==" " ( set "architecture=%architecture:~0,-1%" & goto remove )
if "%version:~-1%"==" " ( set "version=%version:~0,-1%" & goto remove )

set "build="
if %version% equ 10240 ( set build=1507 )
if %version% equ 10586 ( set build=1511 )
if %version% equ 14393 ( set build=1607 )
if %version% equ 15063 ( set build=1703 )
if %version% equ 16299 ( set build=1709 )
if %version% equ 17134 ( set build=1803 )
if %version% equ 17763 ( set build=1809 )
if %version% equ 18362 ( set build=1903 )
if %version% equ 18363 ( set build=1909 )
if %version% equ 19041 ( set build=2004 )
if %version% equ 19042 ( set build=20H2 )
if %version% equ 19043 ( set build=21H1 )
if %version% equ 19044 ( set build=21H2 )
if %version% equ 19045 ( set build=22H2 )

goto show

:show
cls
echo =============================================================================
echo               Hardware Specifications for the hostname %host%
echo =============================================================================
echo.
echo. Manufacturer: %manufacturer%
echo.
echo. Model: %model%
echo.
echo. IPv4 Address: %ipv4% - MacAddress: %macAddress%
echo.
echo. ServiceTAG: %serialnumber%
echo.
echo. CPU: %cpu_name% (%cores% cores / %threads% threads)
echo.
echo. RAM Memory: %memory_size% Gb (%capacities%)
echo.
echo. Storage: %storage_size% Gb - %storage_model%
echo.
echo. Operation System: %systemoperation% %architecture% v%build%
echo.
echo. Current User: %username%
echo.
echo.
goto end

:error
cls
echo.
echo.
echo.           л
echo         л  л  л                 ллллллллллллллллл
echo          ллллл                 ллл  ллллллллллллллл          ERROR:
echo       лллл   лллл              лллллллллллллллллллл    HOSTNAME NOT FOUND
echo          ллллл                 лллллллллллллллллллл       TRY AGAIN..
echo         л  л  л                лллллллллллллллллллл
echo            л                   ллллллллл
echo                                лллллллллллллллл
echo                    л           лллллллллл
echo     $              ллл        ллллллллллл             $                 
echo     $  $           лллллл    ллллллллллллллл       $  $            $         
echo.    $  $  $         ллллллллллллллллллллл  л       $  $  $      $  $        
echo.     $$$  $          лллллллллллллллллллл           $$$  $      $  $  $  
echo.       $$$            лллллллллллллллллл              $$$        $$$  $  
echo.       $               лллллллллллллллл               $            $$$  
echo._______$_______________лллллллллллллллл_______________$____________$_________
echo.                        ллллл   ллллл                              $
echo.      --                ллл      ллл               --                   --
echo.             --         л          л     --                               
echo.       --               ллл        ллл       --            --        --              
goto end

:end
echo =============================================================================
echo                      Press any key for a new query...
echo =============================================================================
pause>NUL
set host=
goto begin