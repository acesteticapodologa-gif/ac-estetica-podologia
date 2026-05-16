@echo off
chcp 65001 >nul
echo.
echo ================================================
echo   AC Estetica e Podologia - Setup de Imagens
echo ================================================
echo.
echo Copiando imagens para a pasta da landing page...
echo.

mkdir "%~dp0images" 2>nul

:: Logo principal (transparente - para header e footer)
copy /Y "..\IMAGENS\LOGO VETORIZADO.png" "%~dp0images\logo.png" >nul 2>&1
if exist "%~dp0images\logo.png" (echo [OK] logo.png) else (echo [ERRO] logo.png nao encontrado)

:: Logo 3D dourado (para OG image / compartilhamento social)
copy /Y "..\IMAGENS\78BCBBFF-999B-4D08-A48A-AE250DCFA1EE.png" "%~dp0images\logo-3d.png" >nul 2>&1
if exist "%~dp0images\logo-3d.png" (echo [OK] logo-3d.png) else (echo [ERRO] logo-3d.png nao encontrado)

:: Imagem de servico (secao Sobre a Ana Carla)
copy /Y "..\IMAGENS\4CF72B1E-2648-45E3-82D4-2F4526C848FD.jpg" "%~dp0images\servico-podologia.jpg" >nul 2>&1
if exist "%~dp0images\servico-podologia.jpg" (echo [OK] servico-podologia.jpg) else (echo [ERRO] servico-podologia.jpg nao encontrado)

:: Hero / estetica das unhas
copy /Y "..\IMAGENS\45760f08-216c-4e06-8fc9-39a00c21069b.jpg" "%~dp0images\hero-unhas.jpg" >nul 2>&1
if exist "%~dp0images\hero-unhas.jpg" (echo [OK] hero-unhas.jpg) else (echo [ERRO] hero-unhas.jpg nao encontrado)

:: Antes/depois 1 - Unha encravada (com etiquetas ANTES/DEPOIS)
copy /Y "..\IMAGENS\7DA958E0-91FD-4BCC-813C-A72A98CB3717.jpg" "%~dp0images\antes-depois-1.jpg" >nul 2>&1
if exist "%~dp0images\antes-depois-1.jpg" (echo [OK] antes-depois-1.jpg) else (echo [ERRO] antes-depois-1.jpg nao encontrado)

:: Antes/depois 2 - Casos variados / ortese
copy /Y "..\IMAGENS\43634f92-5577-4716-8a6c-cbcc7deed733.jpg" "%~dp0images\antes-depois-2.jpg" >nul 2>&1
if exist "%~dp0images\antes-depois-2.jpg" (echo [OK] antes-depois-2.jpg) else (echo [ERRO] antes-depois-2.jpg nao encontrado)

:: Antes/depois 3 - Antes e depois lateral
copy /Y "..\IMAGENS\3cfa4203-3c27-4465-a88d-5b4f84aa9636.jpg" "%~dp0images\antes-depois-3.jpg" >nul 2>&1
if exist "%~dp0images\antes-depois-3.jpg" (echo [OK] antes-depois-3.jpg) else (echo [ERRO] antes-depois-3.jpg nao encontrado)

:: Antes/depois 4 - Collage de casos (4 fotos)
copy /Y "..\IMAGENS\17c7b16a-9541-4c35-a1aa-fce851031dd1.jpg" "%~dp0images\antes-depois-4.jpg" >nul 2>&1
if exist "%~dp0images\antes-depois-4.jpg" (echo [OK] antes-depois-4.jpg) else (echo [ERRO] antes-depois-4.jpg nao encontrado)

echo.
echo ================================================
echo PRONTO! Imagens configuradas com sucesso.
echo.
echo PROXIMOS PASSOS:
echo  1. Abra o index.html no navegador para visualizar
echo  2. Para substituir pela sua foto pessoal:
echo     - Salve a foto como "images\ana-carla.jpg"
echo     - Ela aparecera automaticamente na secao Sobre
echo  3. Para subir no ar: use Vercel ou Netlify
echo     (veja o arquivo GUIA-PUBLICACAO.md)
echo ================================================
echo.
pause
