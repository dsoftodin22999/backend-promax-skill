# Backend Pro Max Workflow (Windsurf)

Automated backend architecture reasoning based on curated data.

## Workflow Steps

1. **Analyze**: Use `search_logic.py` to identify the project domain and scale.
2. **Lookup**: Retrieve architectural patterns from `architecture-patterns.csv`.
3. **Validate**: Cross-reference security needs in `security-deep-dive.csv`.
4. **Test Plan**: Define testing strategy from `testing-strategies.csv`.
5. **Infrastructure**: Select cloud services from `cloud-patterns.csv`.
6. **Execute**: Standardize implementation based on `tech-stacks.csv`.

## Core Reasoning

Follow the data-driven logic from `.shared/backend-promax/data/`. Ensure high performance, security compliance, and edge-case resilience.

## Available Commands

- `/backend-pro-max [industry] [project]` - Full architecture report
- `/backend-db [data_type]` - Database selection
- `/backend-secure` - Security audit
- `/backend-test [project_type]` - Testing recommendations
- `/backend-cloud [service]` - Cloud comparisons
