# src/
> 📝 This file is kept as a reference for how the Blazor Hosted solution was scaffolded.

This folder will contain the solution and projects.

Recommended: create a hosted Blazor WebAssembly solution which scaffolds Client, Server and Shared projects.

From the repo root run:

dotnet new blazorwasm -ho -o src/SqlQuestGame
mv src/SqlQuestGame/Client src/SqlQuestGame.Client
mv src/SqlQuestGame/Server src/SqlQuestGame.Server
mv src/SqlQuestGame/Shared src/SqlQuestGame.Shared

Or manually create projects:
- SqlQuestGame.Client (Blazor WebAssembly)
- SqlQuestGame.Server (ASP.NET Core Web API)
- SqlQuestGame.Shared (class library for DTOs/models)

After scaffolding, commit the projects and push to trigger CI/CD workflows.
