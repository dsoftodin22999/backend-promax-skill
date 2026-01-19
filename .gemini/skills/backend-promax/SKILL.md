# Backend Pro Max Skill (Gemini CLI)

Backend architecture intelligence for the Gemini CLI. All reasoning is based on the research data in `.shared/backend-promax/data/`.

## Capabilities

- **System Design**: Check `backend-reasoning.csv` and `architecture-patterns.csv`.
- **Database Selection**: Check `database-decision-matrix.csv`.
- **Security Checklists**: Check `security-deep-dive.csv`.
- **Performance Tuning**: Check `performance-optimization-guide.csv`.
- **Testing Strategies**: Check `testing-strategies.csv`.
- **Cloud Patterns**: Check `cloud-patterns.csv`.
- **Observability**: Check `observability-stack.csv`.

## Core Directives

1. **Idempotency Mandatory**: All write APIs must support an atomic state check or idempotency token.
2. **Reliability Focus**: Use `reliability-strategies.csv` to ensure high availability.
3. **Optimized Delivery**: Follow the **Pre-delivery Checklist** in `pre-delivery-checklist.csv`.
4. **Context Awareness**: Use `BACKEND_MASTER.md` to maintain architecture consistency across sessions.

## Commands

- `/backend-pro-max [industry] [project]` - Generate full architecture report
- `/backend-db [data_type]` - Database selection reasoning
- `/backend-secure` - Security audit
- `/backend-test [project_type]` - Testing strategy recommendations
- `/backend-cloud [service]` - Cloud service comparison
