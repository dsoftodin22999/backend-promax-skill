# Integration Guide

This guide explains how to integrate Backend Pro Max Skill into your existing project.

---

## Quick Start

### Option 1: Using npx (Recommended)

Navigate to your project directory and run:

```bash
cd /path/to/your/project
npx backend-promax-skill init
```

### Option 2: One-line Installer

**Windows (PowerShell):**
```powershell
cd C:\path\to\your\project
iwr -useb https://raw.githubusercontent.com/dsoftodin22999/backend-promax-skill/main/install.ps1 | iex
```

**Mac / Linux:**
```bash
cd /path/to/your/project
curl -fsSL https://raw.githubusercontent.com/dsoftodin22999/backend-promax-skill/main/install.sh | sh
```

### Option 3: Local Installation (From Cloned Repo)

If you have cloned the repository locally:

**Windows:**
```powershell
.\install_to_project.ps1 -TargetProject "C:\path\to\your\project"
```

### Option 4: Manual Copy

Copy these folders to your project root:

```
.claude/          → For Claude Code
.cursor/          → For Cursor IDE
.windsurf/        → For Windsurf IDE
.agent/           → For Antigravity
.gemini/          → For Gemini CLI
.github/          → For GitHub Copilot
.kiro/            → For Kiro
.roo/             → For Roo Code
.codex/           → For Codex CLI
.qoder/           → For Qoder
.trae/            → For Trae IDE
.shared/          → Core data files (REQUIRED)
.cursorrules      → Cursor rules file
```

---

## What Gets Installed

After installation, your project will have:

```
your-project/
├── .shared/
│   └── backend-promax/
│       ├── data/                    ← 18 CSV knowledge base files
│       │   ├── backend-reasoning.csv
│       │   ├── database-decision-matrix.csv
│       │   ├── security-deep-dive.csv
│       │   ├── testing-strategies.csv
│       │   ├── cloud-patterns.csv
│       │   └── ... (13 more files)
│       └── search_logic.py          ← Reasoning engine
├── .claude/                         ← Claude Code integration
├── .cursor/                         ← Cursor IDE integration
├── .agent/                          ← Antigravity workflows
├── .gemini/                         ← Gemini CLI integration
├── .github/                         ← GitHub Copilot prompts
├── .windsurf/                       ← Windsurf workflows
└── BACKEND_MASTER.md                ← Generated after first use
```

---

## Usage by AI Agent

### Antigravity / Cursor / Windsurf

Use slash commands in the chat:

```
/backend-pro-max "Fintech" "PaymentGateway"
```

This generates a full architecture report and saves it to `BACKEND_MASTER.md`.

### Available Commands

| Command | Description |
|---------|-------------|
| `/backend-pro-max [industry] [project]` | Generate full architecture report |
| `/backend-db [data_type]` | Database selection recommendation |
| `/backend-secure` | Security audit of current code |
| `/backend-test [project_type]` | Testing strategy recommendations |
| `/backend-cloud [service]` | Cloud service comparison |
| `/backend-observability` | Observability tool recommendations |

### Direct Prompts (Any AI Agent)

You can also use natural language:

```
"Based on the database-decision-matrix, recommend the best storage for a real-time chat app."
```

```
"Audit my API code against the security-deep-dive checklist."
```

```
"What testing strategy should I use for this microservices project?"
```

---

## Running the Reasoning Engine Manually

You can run the reasoning engine directly using Python:

```bash
# Generate architecture report
python .shared/backend-promax/search_logic.py "Fintech" --system-design --project "MyApp" --persist

# Search for database recommendations
python .shared/backend-promax/search_logic.py "cache" --domain database-decision-matrix

# Search for security guidelines
python .shared/backend-promax/search_logic.py "authentication" --domain security-deep-dive
```

---

## Example Workflow

### Step 1: Initialize Project

```bash
cd my-new-project
npx backend-promax-skill init
```

### Step 2: Generate Architecture

Open your AI coding assistant and type:

```
/backend-pro-max "E-commerce" "MarketplaceApp"
```

### Step 3: Review Architecture

Check the generated `BACKEND_MASTER.md` file for:
- Recommended architecture pattern
- Database strategy
- Security protocols
- Anti-patterns to avoid
- Pre-delivery checklist

### Step 4: Implement with Guidance

Ask the AI for specific guidance:

```
"Based on BACKEND_MASTER.md, create the initial project structure."
```

```
"Implement the database schema following the architecture report."
```

---

## Updating the Skill

To update to the latest version, simply run the installer again in your project directory. It will overwrite the existing files with the latest version.

---

## Troubleshooting

### Python Not Found

The reasoning engine requires Python 3.7+. Install Python and ensure it's in your PATH.

### CSV Files Missing

Make sure the `.shared/backend-promax/data/` directory was copied correctly. Re-run the installer if needed.

### Commands Not Working

Ensure you're using a supported AI coding assistant:
- Cursor IDE
- Windsurf IDE
- Claude Code
- Antigravity
- Gemini CLI
- GitHub Copilot
- Kiro, Roo Code, Codex CLI, Qoder, Trae IDE

---

## Support

- Repository: https://github.com/dsoftodin22999/backend-promax-skill
- Issues: https://github.com/dsoftodin22999/backend-promax-skill/issues
