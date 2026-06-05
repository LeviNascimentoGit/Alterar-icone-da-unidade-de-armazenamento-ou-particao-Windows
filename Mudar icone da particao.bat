	@echo off
	chcp 65001 >nul

REM 	Verifica se o usuário está executando o arquivo como administrador
	>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
	if not %errorlevel%==0 (
echo.
echo.
echo 		[Atenção!]	Este script precisa ser executado como Administrador.
echo.
echo 	Clique no arquivo de script com o botão direito do mouse e selecione a opção [Executar como administrador]
color 4
echo.
echo.
pause
exit
)

:inicio

set /p letra=^>	Digite a letra da partição e pressione [Enter]: 
set /p numero=^>	Digite o numero do ícone e pressione [Enter], para redefnir Padrão digite 0: 

REM Vai começar limpando os arquivos que já tem pra evitar erro de acesso negado.

	del /f /a "%letra%:/autorun.inf" "%letra%:/icone.ico"

REM Se o número for 0 ele já encerra, se não, ele continua o processo de cópia
	if %numero%==0 (goto sucesso)

	pushd %~dp0
	echo f | xcopy /y /h "resources\icons\%numero%.ico" "%letra%:/icone.ico"
	if not %errorlevel%==0 (goto erro)
	attrib +h "%letra%:/icone.ico"
	echo f | xcopy /y /h "resources\autorun.inf" "%letra%:/autorun.inf"
	if not %errorlevel%==0 (goto erro)
	attrib +h "%letra%:/autorun.inf"

:sucesso

echo.
echo   ;^)	ALTERADO com sucesso!
color a0
echo.
	timeout /t 3 >nul
exit

:erro

echo.
echo   :^(	[Erro] Falha na copia!
echo.
color c7
	timeout /t 3 >nul
exit

