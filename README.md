# 🎮 SqlQuestGame — Phase 0 (Infrastructure + CI/CD)

This archive contains the Phase 0 (foundation) files for the **SqlQuestGame** project:
- Azure Bicep IaC to provision minimal resources (Azure SQL, App Service plan + Web App)
- GitHub Actions workflows for infra, backend and frontend deployments
- Issue templates and basic repo files
- Project scaffold placeholders (src/) with guidance to create the Blazor solution

## What is included
- `.github/workflows/`:
  - `infra-deploy.yml` — deploy Bicep using Azure Service Principal credentials
  - `backend-deploy.yml` — build & deploy ASP.NET Core API (App Service)
  - `frontend-deploy.yml` — build & deploy Blazor WebAssembly (Static Web Apps)
- `infrastructure/main.bicep` — Azure Bicep template for core resources
- `infrastructure/parameters.json` — example parameters file
- `src/` — placeholders and guidance to create solution/projects
- `.gitignore`, `LICENSE` (MIT), `.github/ISSUE_TEMPLATE/`

## How to use
1. Extract the zip and push to a new GitHub repository named `SqlQuestGame`.
2. Create an Azure Service Principal and add the JSON as `AZURE_CREDENTIALS` secret in GitHub.
3. Add other secrets:
   - `AZURE_SUBSCRIPTION_ID`
   - `SQL_ADMIN_PASSWORD`
   - `AZURE_PUBLISH_PROFILE` (for App Service)
   - `AZURE_STATIC_WEB_APPS_API_TOKEN` (for Static Web Apps)
4. Trigger the `infra-deploy.yml` workflow (or push to main) to provision resources.
5. Follow `src/README.md` to scaffold the Blazor + API projects locally.

## Next steps (Phase 1)
- Scaffold Blazor WebAssembly (hosted) solution:
  `dotnet new blazorwasm -ho -o src/SqlQuestGame`
- Implement database models and API endpoints
- Add EF Core migrations and seed data
- Iterate on CI/CD and deploy

---
Built in public — guided mentorship style. Good luck, Lanre! 🚀
