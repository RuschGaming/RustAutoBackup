@echo off
title Rust Auto Backup by RuschGaming

rem |======================|
rem | Rust Autmated Backup |
rem | Version: 1.0         |
rem | Made by: RuschGaming |
rem |======================|

echo ========================================================================
echo "    ____  __  _____________   ____  ___   ________ ____  ______       "
echo "   / __ \/ / / / ___/_  __/  / __ )/   | / ____/ //_/ / / / __ \      "
echo "  / /_/ / / / /\__ \ / /    / __  / /| |/ /   / ,< / / / / /_/ /      "
echo " / _, _/ /_/ /___/ // /    / /_/ / ___ / /___/ /| / /_/ / ____/       "
echo "/_/ |_|\____//____//_/    /_____/_/  |_\____/_/ |_\____/_/            "
echo "                           __                                         "
echo "                          / /_  __  __                                "
echo "                         / __ \/ / / /                                "
echo "                        / /_/ / /_/ /                                 "
echo "                       /_.___/\__, /                                  "
echo "                             /____/                                   "
echo "    ____  __  _______ ________  ___________    __  ________   ________"
echo "   / __ \/ / / / ___// ____/ / / / ____/   |  /  |/  /  _/ | / / ____/"
echo "  / /_/ / / / /\__ \/ /   / /_/ / / __/ /| | / /|_/ // //  |/ / / __  "
echo " / _, _/ /_/ /___/ / /___/ __  / /_/ / ___ |/ /  / _/ // /|  / /_/ /  "
echo "/_/ |_|\____//____/\____/_/ /_/\____/_/  |_/_/  /_/___/_/ |_/\____/   "
echo "                                                                      "
echo ========================================================================

rem ----------------------------------DO NOT EDIT --------------------------------
for /f "delims=" %%a in ('wmic OS Get localdatetime  ^| find "."') do set dt=%%a
set datestamp=%dt:~0,8%
set timestamp=%dt:~8,6%
set YYYY=%dt:~0,4%
set MM=%dt:~4,2%
set DD=%dt:~6,2%
set HH=%dt:~8,2%
set Min=%dt:~10,2%
set Sec=%dt:~12,2%
set stamp=%DD%-%MM%-%YYYY% %HH%;%Min%
rem ------------------------------------------------------------------------------


rem ------------------------------------------------------------------------------
:: Path to your rust server
set SourcePath=E:\Rust
:: Path to your backup location
set DestinationPath=E:\Backups
rem ------------------------------------------------------------------------------

rem ----------------------------------DO NOT EDIT --------------------------------
set OxidePath=%SourcePath%\oxide\*.*
set ServerPath=%SourcePath%\server\*.*

echo Backup Started at %stamp%
@timeout /T 10 >nul
Xcopy "%OxidePath%" "%DestinationPath%\%stamp%\Oxide\"  /E /I
Xcopy "%ServerPath%" "%DestinationPath%\%stamp%\Server\" /E /I
rem ------------------------------------------------------------------------------
Echo.
Echo Backup done, Auto Exiting...
@timeout /T 5 >nul