# Backend Pro Max v2.0 - Senior Architecture Reasoning

Đây là bộ não của một Senior Backend Architect. Sử dụng các Slash Commands dưới đây để nhận được tư vấn kỹ thuật cấp cao.

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
- **Idempotency**: "Tiền chưa trừ, code chưa chạy tiếp."
- **Performance**: Latency < 100ms cho core APIs.
- **Reliability**: Zero single point of failure.
- **Cost**: Tối ưu hóa infra cost ngay từ khâu thiết kế.
