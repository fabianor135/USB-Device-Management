import subprocess


def disable_device(device_id):
    """
    Desabilita o dispositivo com o ID especificado utilizando PowerShell com permissões elevadas.
    """
    command = f"C:\\Windows\\System32\\WindowsPowerShell\\v1.0\\powershell.exe -Command \"Start-Process powershell -ArgumentList '-Command \"Disable-PnpDevice -InstanceId \'{device_id}\' -Confirm:$false\"' -Verb RunAs\""
    result = subprocess.run(command, shell=True,
                            capture_output=True, text=True)
    print(f"Comando: {command}")
    print(f"Saída: {result.stdout}")
    print(f"Erro: {result.stderr}")
    return result


def enable_device(device_id):
    """
    Habilita o dispositivo com o ID especificado utilizando PowerShell com permissões elevadas.
    """
    command = f"C:\\Windows\\System32\\WindowsPowerShell\\v1.0\\powershell.exe -Command \"Start-Process powershell -ArgumentList '-Command \"Enable-PnpDevice -InstanceId \'{device_id}\' -Confirm:$false\"' -Verb RunAs\""
    result = subprocess.run(command, shell=True,
                            capture_output=True, text=True)
    print(f"Comando: {command}")
    print(f"Saída: {result.stdout}")
    print(f"Erro: {result.stderr}")
    return result


def restart_usb_device():
    # Caminho de instância completo dos dispositivos USB
    device_ids = [
        r"USB\VID_0489&PID_E027\6&23230D7F&0&5",  # Adapte conforme necessário
        # Segundo exemplo, ajuste se necessário
        r"USB\VID_0489&PID_E027\6&23230D7F&0&4"
    ]

    for device_id in device_ids:
        print(f"Desabilitando o dispositivo {device_id}...")
        disable_result = disable_device(device_id)
        if disable_result.returncode != 0:
            print(f"Erro ao desabilitar o dispositivo {device_id}")

        print(f"Habilitando o dispositivo {device_id}...")
        enable_result = enable_device(device_id)
        if enable_result.returncode != 0:
            print(f"Erro ao habilitar o dispositivo {device_id}")


if __name__ == "__main__":
    restart_usb_device()
