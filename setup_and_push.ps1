# PowerShell script para inicializar repositório e preparar push
git init
git lfs install
git lfs track "*.pbix"
New-Item -ItemType Directory -Force -Path pbix, docs | Out-Null
$src = "/mnt/data/ESG_FINALIZADO.pbix"
if (Test-Path $src) {
    Copy-Item $src -Destination "pbix\ESG_FINALIZADO.pbix" -Force
    Write-Host "Copiado $src -> pbix\ESG_FINALIZADO.pbix"
} else {
    Write-Warning "Arquivo fonte não encontrado em $src. Coloque manualmente em pbix\ ou ajuste o caminho."
}
git add .gitattributes
git add README.md docs\*.md pbix\ESG_FINALIZADO.pbix .gitignore LICENSE setup_and_push.sh setup_and_push.ps1 create_repo_with_gh.sh
git commit -m "Initial commit: add PBIX and documentation (Git LFS tracked for .pbix)"
Write-Host "Repositório inicializado localmente."
Write-Host "Remoto sugerido: git@github.com:grazieliandrade111/esg-dashboard.git"
Write-Host "Para adicionar o remote e enviar para o GitHub, rode:"
Write-Host "  git remote add origin git@github.com:grazieliandrade111/esg-dashboard.git"
Write-Host "  git branch -M main"
Write-Host "  git push -u origin main"
