# Backend Pro Max v2.0 - Senior Architecture Reasoning

This is the brain of a Senior Backend Architect. Use the Slash Commands below to receive senior-level technical consulting.

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

## Senior Priorities
- **Idempotency**: "Funds not deducted, code does not proceed."
- **Performance**: Latency < 100ms for core APIs.
- **Reliability**: Zero single point of failure.
- **Cost**: Optimize infrastructure cost starting from the design phase.
