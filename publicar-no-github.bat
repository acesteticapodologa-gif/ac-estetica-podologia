@echo off
chcp 65001 >nul
echo.
echo ================================================
echo   AC Estetica e Podologia - Publicar no GitHub
echo ================================================
echo.

cd /d "%~dp0"

:: Verificar se git esta instalado
git --version >nul 2>&1
if errorlevel 1 (
  echo [ERRO] Git nao encontrado. Instale em https://git-scm.com
  pause
  exit /b 1
)

:: Inicializar repositorio (se nao existir)
if not exist ".git" (
  echo [1/5] Inicializando repositorio git...
  git init
  git branch -M main
) else (
  echo [1/5] Repositorio git ja existe. OK.
)

:: Configurar usuario (se nao configurado)
git config user.name >nul 2>&1
if errorlevel 1 (
  git config --global user.name "Ana Carla"
  git config --global user.email "ac.estetica.podologa@gmail.com"
)

:: Adicionar todos os arquivos
echo [2/5] Adicionando arquivos...
git add .

:: Fazer commit
echo [3/5] Criando commit...
git commit -m "Landing page AC Estetica e Podologia - versao inicial" --allow-empty

:: Configurar repositorio remoto
echo [4/5] Configurando repositorio remoto...
git remote remove origin 2>nul
git remote add origin https://github.com/acesteticapodologa-gif/ac-estetica-podologia.git

:: Fazer push
echo [5/5] Enviando para o GitHub...
echo.
echo ATENCAO: Uma janela de login do GitHub vai abrir.
echo Entre com seu usuario e senha (ou token) do GitHub.
echo.
git push -u origin main

if errorlevel 1 (
  echo.
  echo [ERRO] Falha ao enviar. Verifique suas credenciais do GitHub.
  echo Dica: Se tiver autenticacao de dois fatores, use um Personal Access Token como senha.
  echo Gere em: https://github.com/settings/tokens/new
) else (
  echo.
  echo ================================================
  echo PRONTO! Sua landing page esta no GitHub em:
  echo https://github.com/acesteticapodologa-gif/ac-estetica-podologia
  echo ================================================
  start https://github.com/acesteticapodologa-gif/ac-estetica-podologia
)

echo.
pause
