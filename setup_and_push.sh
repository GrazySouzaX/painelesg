#!/usr/bin/env bash
set -e
REPO_DIR="$(pwd)"
echo "Inicializando repositório em $REPO_DIR"

# Init git
git init

# Install Git LFS (assume installed on system) and track pbix
git lfs install
git lfs track "*.pbix"

# Ensure folders
mkdir -p pbix docs

# Copy pbix from original uploaded path
SRC="/mnt/data/ESG_FINALIZADO.pbix"
if [ -f "$SRC" ]; then
  cp "$SRC" pbix/ESG_FINALIZADO.pbix
  echo "Copiado $SRC -> pbix/ESG_FINALIZADO.pbix"
else
  echo "AVISO: arquivo fonte não encontrado em $SRC. Coloque manualmente em pbix/ ou ajuste o caminho."
fi

# Add files and commit
git add .gitattributes
git add README.md docs/*.md pbix/ESG_FINALIZADO.pbix .gitignore LICENSE setup_and_push.sh setup_and_push.ps1 create_repo_with_gh.sh
git commit -m "Initial commit: add PBIX and documentation (Git LFS tracked for .pbix)"

echo "Repositório inicializado localmente."
echo "Remoto sugerido: git@github.com:grazieliandrade111/esg-dashboard.git"
echo "Para adicionar o remote e enviar para o GitHub, rode:"
echo "  git remote add origin git@github.com:grazieliandrade111/esg-dashboard.git"
echo "  git branch -M main"
echo "  git push -u origin main"
