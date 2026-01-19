---
description: Backend Pro Max v2.0 - Architecture Reasoning Commands
---

# Backend Pro Max v2.0 - Architecture Reasoning

Use these commands to receive architecture consulting and system design recommendations.

## Slash Commands

### `/backend-pro-max` [industry] [project_name]
// turbo
1. Run command: `python .shared/backend-promax/search_logic.py "[industry]" --system-design --project "[project_name]" --persist`
2. Read the generated `BACKEND_MASTER.md` to understand the full architecture.
3. Propose the initial project structure and boilerplate based on the report.

### `/backend-db` [data_type]
// turbo
1. Run command: `python .shared/backend-promax/search_logic.py "[data_type]" --domain database-decision-matrix`
2. Explain why the recommended database is optimal for the given data type (Scale, Consistency, Latency).

### `/backend-secure`
1. Read the current file.
// turbo
2. Run command: `python .shared/backend-promax/search_logic.py "all" --domain security-deep-dive`
3. Audit the code against the Backend Pro Max security checklist.

### `/backend-test` [project_type]
// turbo
1. Run command: `python .shared/backend-promax/search_logic.py "[project_type]" --domain testing-strategies`
2. Recommend appropriate testing strategies based on the project type.

### `/backend-cloud` [service_category]
// turbo
1. Run command: `python .shared/backend-promax/search_logic.py "[service_category]" --domain cloud-patterns`
2. Compare cloud service options and recommend the optimal choice.

### `/backend-observability`
// turbo
1. Run command: `python .shared/backend-promax/search_logic.py "all" --domain observability-stack`
2. Recommend observability tools and monitoring setup for the project.

## Architecture Priorities

- **Idempotency**: All write/POST APIs must support Idempotency-Key.
- **Performance**: Latency < 100ms for core APIs.
- **Reliability**: Zero single point of failure.
- **Cost**: Optimize infrastructure cost starting from the design phase.
