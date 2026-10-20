@echo off
echo ============================================================
echo   Compilando Documento de Requerimientos CRM (LaTeX)
echo ============================================================

cd /d "%~dp0..\src"

echo [1/2] Primera pasada de pdflatex...
pdflatex -interaction=nonstopmode requerimientos_crm.tex > nul

echo [2/2] Segunda pasada de pdflatex (resolviendo tabla de contenidos e hipervinculos)...
pdflatex -interaction=nonstopmode requerimientos_crm.tex

if exist requerimientos_crm.pdf (
    echo.
    echo Actualizando archivo en docs\requerimientos_crm.pdf...
    copy /y requerimientos_crm.pdf "..\docs\requerimientos_crm.pdf" > nul
    echo.
    echo [EXITO] PDF generado correctamente en docs\requerimientos_crm.pdf
) else (
    echo.
    echo [ERROR] No se pudo generar el archivo PDF. Revisa src\requerimientos_crm.log
)

pause
