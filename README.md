# ESG Dashboard

Repositório com o dashboard ESG (Power BI) e documentação associada.

## Visão Geral
Este repositório contém o arquivo Power BI (`.pbix`) com o dashboard ESG, documentação técnica, medidas DAX de referência e scripts para inicializar um repositório Git com suporte a Git LFS.

**Arquivo PBIX (local no ambiente):** `/mnt/data/ESG_FINALIZADO.pbix`

## Estrutura do repositório
- `pbix/ESG_FINALIZADO.pbix` — arquivo Power BI 
- `docs/Relatorio_ESG.md` — relatório detalhado do dashboard 
- `docs/DAX_MEASURES.md` — medidas DAX principais e templates.
- `docs/DATA_SOURCES.md` — descrição e responsáveis pelas fontes de dados.
- `.gitattributes` — configura Git LFS para `.pbix`.
- `.github/workflows/ci.yml` — workflow de CI 
- `setup_and_push.sh` / `setup_and_push.ps1` — scripts para inicializar o repositório local e commitar com Git LFS.
- `create_repo_with_gh.sh` — script opcional que usa `gh` para criar o repo remoto e dar push.

## Como usar
1. Baixe/clona este repositório para sua máquina.
2. Instale Git e Git LFS:
   ```bash
   git lfs install
   git lfs track "*.pbix"
   ```
3. Autentique o GitHub CLI (se for usar `create_repo_with_gh.sh`):
   ```bash
   gh auth login
   ```
4. Para inicializar localmente e commitar (scripts já preparados):
   ```bash
   bash setup_and_push.sh
   # ou em PowerShell
   .\setup_and_push.ps1
   ```
5. Para criar o repositório e fazer push automaticamente pelo `gh` (após `gh auth login`):
   ```bash
   ./create_repo_with_gh.sh
   ```

## Contato / Responsáveis
- Autor: grazieliandrade111
- Email:grazieliandrade111@gmail.com
