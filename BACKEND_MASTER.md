# Backend Master Architecture
*Generated on 2026-01-19 15:24:39*

```text

+----------------------------------------------------------------------------------------+
|  TARGET: MoneyGuard App - RECOMMENDED BACKEND ARCHITECTURE                            |
+----------------------------------------------------------------------------------------+
|                                                                                        |
|  ARCHITECTURE: Event-Driven (EDA)                                  |
|     Scale Strategy: Fintech optimized                               |
|     Security Level: Critical                                       |
|                                                                                        |
|  STACK: Go / Rust                    |
|     Database: PostgreSQL (ACID) + Kafka                                          |
|     Key Features: Idempotency; mTLS; Ledger                                           |
|                                                                                        |
|  AVOID (Anti-patterns):                                                                |
     - Client-side balance calculation: Security risk (Tampering).
|                                                                                        |
|  PRE-DELIVERY CHECKLIST:                                                               |
     [ ] Idempotency: All write/POST APIs must support Idempotency-Key.
     [ ] Input Validation: Strict typing and sanitization for all external inputs.
     [ ] Retries & Timeouts: Defined timeouts for all external service calls.
     [ ] Database Indexing: Explain-plan analysis for all heavy queries.
+----------------------------------------------------------------------------------------+
```
