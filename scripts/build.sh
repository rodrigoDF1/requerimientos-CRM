#!/usr/bin/env bash
set -e

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"
cd "$DIR/../src"

echo "=== Compilando Documento de Requerimientos CRM (LaTeX) ==="
echo "[1/2] Primera pasada de pdflatex..."
pdflatex -interaction=nonstopmode requerimientos_crm.tex > /dev/null

echo "[2/2] Segunda pasada de pdflatex..."
pdflatex -interaction=nonstopmode requerimientos_crm.tex

if [ -f "requerimientos_crm.pdf" ]; then
    cp -f requerimientos_crm.pdf ../docs/requerimientos_crm.pdf
    echo "=== [EXITO] PDF generado en docs/requerimientos_crm.pdf ==="
else
    echo "=== [ERROR] Falló la generación del PDF. ==="
    exit 1
fi
