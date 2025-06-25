# AI Contribution Guidelines

This repository holds Espanso configuration files tailored for the Deeptree team.
The setup script installs Espanso on Windows via Chocolatey and copies these files
into `%APPDATA%\espanso`. The YAML files define expansions for email templates,
client names, ticket responses, and other snippets that speed up technician
workflows. Two folders are particularly important:

- **`expansions_deeptree/`** – Shared snippets used by everyone.
- **`expansions_personalized/`** – Templates for personal ticket notes and
  user‑specific tasks.
- **`global/`** – Common helpers like date/time expansions.
- **`variables_global/`** – Stores variables for Deeptree and for personal data
  filled in by each user.

The included `Setup_Espanso_and_Configs.bat` script installs everything and
restarts Espanso so the new snippets load.

## Commit Conventions

Use [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/)
for all commit messages. Prefix each commit with a type such as `feat`, `fix`,
`docs`, `refactor`, or `chore`. The subject line should be short and in the
imperative mood. Example:

```
feat: add snippet for new client credentials
```

If a change affects documentation only, use the `docs` type. Multiple related
changes may be squashed into a single commit when appropriate.

## Pull Requests

When opening a pull request, include a summary of what was changed and why.
Mention any manual steps required for users. If you ran commands to verify the
repository (such as a linting tool), summarize the results in the PR body.

No automated test suite is provided at this time, so there are no required test
commands.
