@echo off
setlocal

:: IDs dos dispositivos USB
set DEVICE_ID_1=USB\VID_0489&PID_E027&REV_0001
set DEVICE_ID_2=USB\VID_0489&PID_E027

:: Função para desabilitar o dispositivo
call :disable_device "%DEVICE_ID_1%"
call :disable_device "%DEVICE_ID_2%"

:: Função para habilitar o dispositivo
call :enable_device "%DEVICE_ID_1%"
call :enable_device "%DEVICE_ID_2%"

:: Fim do script
endlocal
exit /b

:disable_device
echo Desabilitando o dispositivo %1...
powershell -Command "Disable-PnpDevice -InstanceId '%1' -Confirm:$false"
if %ERRORLEVEL% neq 0 (
    echo Erro ao desabilitar o dispositivo %1
)
exit /b

:enable_device
echo Habilitando o dispositivo %1...
powershell -Command "Enable-PnpDevice -InstanceId '%1' -Confirm:$false"
if %ERRORLEVEL% neq 0 (
    echo Erro ao habilitar o dispositivo %1
)
exit /b
