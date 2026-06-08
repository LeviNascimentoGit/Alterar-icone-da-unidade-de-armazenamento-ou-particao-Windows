# Mudar o ícone da partição de uma unidade de disco no Windows

> Este repositório contém um Batch Script que automatiza e simplifica a mudança do ícone de uma unidade de disco como Pendrive, HD externo ou Partição.

# Instruções

1. Use git clone ou download zip para baixar os arquivos desse repositório
2. Execute o arquivo `Mudar icone da particao.bat`
3. Digite a letra que representa a Unidade de Disco ou Partição que você quer alterar o ícone
4. Digite o número do ícone que deseja usar

> Após cada alteração, a unidade precisa ser desconectada e conectada novamente para ser mostrado o novo ícone.  
> No caso de um disco interno, basta reiniciar o computador;  
> ou Remover e Atribuir novamente a letra da unidade ou partição (não é necessário alterar para uma letra diferente). Isso pode ser feito usando o ```Gerenciador de Disco do Windows```.

# Personalização
## Como adicionar ícones personalizados
Para usar ícones personalizados, basta adicionar um arquivo de ícone no diretório `.\resources\icons`  
> Somente arquivos no formato ```.ico``` são suportados

## Como converter outros formatos de imagem para `*.ico`
O software [Format Factory](http://www.pcfreetime.com/formatfactory/) pode ser utilizado para converter diversos formatos de imagem para *.ico
### Instruções
1. Dentro do aplicativo selecione a opção de conversão para `.ico` e selecione os arquivos que serão convertidos
2. Selecione a opção `Sair para a pasta de origem`
3. Altere a `Configuração de saída` para o tamanho `256x256`

## Lista de fontes para baixar ícones

[Folder 11](https://github.com/icon11-community/Folder11/tree/main/svg)

[OpenCore - Golden Gate](https://github.com/acidanthera/OcBinaryData/tree/master/Resources/Image/Acidanthera/GoldenGate)  
[Abrir e baixar no formato *icns](https://relikd.github.io/icnsutil/html/viewer.html)

[Eleven Forum - Windows 11 icons](https://www.elevenforum.com/t/custom-icons-for-windows-11-thread-folders-dropbox-google-drive-podcasts-nvme-drive-steam-adobe.448/)

# Em breve...
- Conversão embutida de outros formatos para *ico
