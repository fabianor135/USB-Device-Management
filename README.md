# Gerenciamento de Dispositivos USB

Este script PowerShell permite desabilitar, habilitar e reiniciar dispositivos USB conectados ao sistema. Ele possui três funções principais:

- `Disable-Device`: Desabilita um dispositivo especificado.
- `Enable-Device`: Habilita um dispositivo especificado.
- `Restart-USBDevice`: Desabilita e habilita dispositivos USB especificados para reiniciar sua conexão.

## Como usar:
1. Substitua os `DeviceID` na função `Restart-USBDevice` pelos IDs dos dispositivos USB que você deseja reiniciar.
2. Execute o script no PowerShell com privilégios administrativos.

## Exemplo de uso:

```powershell
Restart-USBDevice



