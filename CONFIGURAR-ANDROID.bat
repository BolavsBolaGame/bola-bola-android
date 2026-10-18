@echo off
chcp 65001 >nul
title Bola vs Bola - Configurar Android
echo ==========================================
echo   BOLA VS BOLA - CONFIGURAR ANDROID
echo ==========================================
echo Confirme que Node.js 22+ e Android Studio estao instalados.
echo Este processo precisa de internet.
pause
call npm install
if errorlevel 1 goto erro
if not exist "android" (
  call npx cap add android
  if errorlevel 1 goto erro
)
call npx cap sync android
if errorlevel 1 goto erro
call npx cap open android
echo Se o Android Studio nao abrir, rode: npx cap open android
pause
exit /b 0
:erro
echo Ocorreu um erro. Copie a mensagem e envie para o ChatGPT.
pause
exit /b 1
