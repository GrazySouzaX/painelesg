#!/usr/bin/env bash
# Creates GitHub repo using gh CLI and pushes local repo (requires gh authenticated)
set -e
REPO_NAME="esg-dashboard"
USER="grazieliandrade111"
FULL_NAME="$USER/$REPO_NAME"
echo "Criando repositório grazieliandrade111/esg-dashboard via gh (requere gh auth)"
gh repo create "$FULL_NAME" --public --source=. --remote=origin --push --confirm
echo "Repositório criado e push realizado para origin."
