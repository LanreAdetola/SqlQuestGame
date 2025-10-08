# 🧠 SQL Quest Game (Azure Edition)
**Learn SQL by playing — powered by Azure and Blazor.**

SQL Quest Game is a cloud-based educational web app that helps learners practice SQL through interactive, real-world challenges.  
Players connect to an **Azure SQL Database**, run real queries, and submit answers through a **Blazor WebAssembly app** — gaining hands-on experience with data exploration and cloud technologies.

---

## 🚀 Tech Stack
- **Frontend:** Blazor WebAssembly (.NET 8)  
- **Backend:** ASP.NET Core Web API  
- **Database:** Azure SQL Database  
- **Infrastructure as Code:** Bicep  
- **CI/CD:** GitHub Actions  
- **Authentication:** Azure Static Web Apps (GitHub Login)

---

## 🧩 Project Phases

| Phase | Focus | Key Deliverables |
|-------|--------|------------------|
| **0** | Foundation | Repo setup, IaC (Bicep), CI/CD pipelines |
| **1** | Core Application | Blazor app + API + SQL connection |
| **2** | Gamification | Leaderboard, scoring, progress tracking |
| **3** | SQL Editor | Monaco-based query interface |

# 🧠 SQL Quest Game (Azure Edition)

Learn SQL by playing — powered by Azure and Blazor.

SQL Quest Game is a cloud-based educational web app where learners practice SQL through interactive, real-world challenges. Players connect to an Azure SQL Database, run queries, and submit answers through a Blazor WebAssembly frontend backed by an ASP.NET Core API.

## Table of contents

- [Tech stack](#tech-stack)
- [Project phases](#project-phases)
- [Infrastructure (Phase 0)](#infrastructure-phase-0)
- [Required GitHub secrets](#required-github-secrets)
- [Getting started (local)](#getting-started-local)
- [Learning outcomes](#learning-outcomes)
- [Next steps](#next-steps)

## Tech stack

- Frontend: Blazor WebAssembly (.NET 8)
- Backend: ASP.NET Core Web API
- Database: Azure SQL Database
- Infrastructure as Code: Bicep
- CI/CD: GitHub Actions
- Authentication: Azure Static Web Apps (GitHub Login)

## Project phases

1. Foundation — repo scaffolding, IaC (Bicep), CI/CD pipelines
2. Core Application — Blazor app + API + SQL connection
3. Gamification — leaderboard, scoring, progress tracking
4. SQL Editor — Monaco-based query interface
5. Insights & AI — Azure OpenAI hints, analytics, Power BI dashboards

## Infrastructure (Phase 0)

Resources are provisioned using Azure Bicep and include (typical):

- Azure SQL Database
- Azure App Service (API)
- Azure Static Web Apps (Blazor client)

Key files

```
infrastructure/
├── main.bicep
├── parameters.json
└── readme.md
.github/workflows/
├── infra-deploy.yml
├── backend-deploy.yml
└── frontend-deploy.yml
```

## Required GitHub secrets

Add these secrets to the repository to enable automated deployments:

| Secret name | Purpose |
|-------------|---------|
| AZURE_CREDENTIALS | JSON output from an Azure service principal used by GitHub Actions |
| AZURE_SUBSCRIPTION_ID | Azure subscription id used by deployment workflows |
| SQL_ADMIN_PASSWORD | Administrator password for the Azure SQL Database (used during provisioning) |
| AZURE_PUBLISH_PROFILE | App Service publish profile (for App Service deployment) |
| AZURE_STATIC_WEB_APPS_API_TOKEN | Token used to deploy the static site / API to Azure Static Web Apps |

## Getting started (local)

1. Clone the repository

```bash
git clone https://github.com/<your-username>/SqlQuestGame.git
cd SqlQuestGame
```

2. Open the solution

```bash
cd src/SqlQuestGame
dotnet restore
```

3. Run the app locally (development)

```bash
cd src/SqlQuestGame/SqlQuestGame
dotnet run
```

Open https://localhost:5001 in your browser (or follow the URLs from the console output).

Notes

- The repository already contains separate `Client`, `Server`, and `Shared` projects under `src/SqlQuestGame`.
- The workflows in `.github/workflows` will deploy infrastructure and apps when pushed to `main` (if configured and secrets are set).

## Learning outcomes

By working through this project you will:

- Build a full-stack cloud app using Azure and Blazor
- Apply DevOps best practices with CI/CD automation
- Manage cloud resources using Infrastructure as Code (Bicep)
- Gain hands-on experience with Blazor + Azure SQL
- Learn modern cloud architecture patterns

## Next steps (Phase 1)

- Implement API endpoints for running and validating queries
- Connect Entity Framework Core to the Azure SQL Database
- Create question and user models and persistence
- Add the first interactive SQL challenge and tests
- Apply DevOps best practices with CI/CD automation
- Manage cloud resources using Infrastructure as Code (Bicep)
- Gain hands-on experience with Blazor + Azure SQL
- Learn modern cloud architecture patterns


Built in public by Lanre 🚀 — a mentorship-style project to learn, build, and share real cloud development practices.