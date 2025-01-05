function Disable-Device {
    param(
        [string]$DeviceID
    )
    
    # Desabilita o dispositivo
    $command = "Disable-PnpDevice -InstanceId '$DeviceID' -Confirm:$false"
    Write-Host "Comando: $command"
    $result = Invoke-Expression $command
    Write-Host "Saída: $result"
}

function Enable-Device {
    param(
        [string]$DeviceID
    )
    
    # Habilita o dispositivo
    $command = "Enable-PnpDevice -InstanceId '$DeviceID' -Confirm:$false"
    Write-Host "Comando: $command"
    $result = Invoke-Expression $command
    Write-Host "Saída: $result"
}

function Restart-USBDevice {
    # IDs corretos dos dispositivos
    $deviceIDs = @(
        "USB\VID_0489&PID_E027\6&23230D7F&0&5",  # Primeiro dispositivo
        "USB\VID_0489&PID_E027\6&23230D7F&0&4"   # Segundo dispositivo
    )

    foreach ($deviceID in $deviceIDs) {
        Write-Host "Desabilitando o dispositivo $deviceID..."
        Disable-Device -DeviceID $deviceID

        Write-Host "Habilitando o dispositivo $deviceID..."
        Enable-Device -DeviceID $deviceID
    }
}

# Executar o processo
Restart-USBDevice
