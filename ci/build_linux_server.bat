@echo off
setlocal enabledelayedexpansion

set PROJECT_PATH=UE-Pipeline-Demo\UE-Pipeline-Demo.uproject
set BUILD_DIR=build\linux-server

mkdir %BUILD_DIR%

"C:\Program Files\Epic Games\UE_5.3\Engine\Build\BatchFiles\RunUAT.bat" BuildCookRun ^
  -project="%PROJECT_PATH%" ^
  -noP4 -platform=Linux ^
  -clientconfig=Shipping -serverconfig=Shipping ^
  -cook -allmaps -build -stage -pak -archive ^
  -archivedirectory="%BUILD_DIR%" ^
  -server ^
  -prereqs
