# Gerenciamento de Dispositivos USB

Este script PowerShell permite desabilitar, habilitar e reiniciar dispositivos USB conectados ao sistema. Ele utiliza comandos do PowerShell para gerenciar os dispositivos, mas você também pode usar o `devcon` como alternativa para maior controle.

## Requisitos

O script faz uso de comandos do PowerShell para interagir com os dispositivos, mas se você estiver encontrando problemas ou quiser ter mais controle, pode ser necessário instalar o **devcon**. O `devcon` é uma ferramenta da Microsoft que fornece uma interface de linha de comando para gerenciar dispositivos do sistema, funcionando como um substituto para os comandos nativos do PowerShell em alguns casos.

## Instalando o DevCon

### Passo 1: Baixar o DevCon

1. O `devcon` está disponível no **Windows Driver Kit (WDK)**. Você pode baixar a versão do WDK correspondente à sua versão do Windows no [site oficial da Microsoft](https://docs.microsoft.com/en-us/windows-hardware/drivers/download-the-wdk).
   
2. Após o download, extraia o conteúdo do WDK e encontre o arquivo `devcon.exe` na pasta `Tools`.

### Passo 2: Adicionar o DevCon ao Caminho do Sistema

Para usar o `devcon` a partir de qualquer terminal, adicione o caminho da pasta onde você extraiu o `devcon.exe` às variáveis de ambiente do Windows:

1. Clique com o botão direito em **Este PC** e selecione **Propriedades**.
2. Clique em **Configurações Avançadas do Sistema**.
3. Em **Variáveis de Ambiente**, encontre a variável `Path` em **Variáveis do Sistema** e clique em **Editar**.
4. Adicione o caminho completo para o diretório que contém o `devcon.exe`.
5. Clique em **OK** e reinicie o terminal ou PowerShell.

### Passo 3: Verificar a Instalação

Para garantir que o `devcon` foi instalado corretamente, abra o PowerShell e digite:

```powershell
devcon


