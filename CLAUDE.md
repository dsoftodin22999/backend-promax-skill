# Backend Pro Max Skill Environment

## Project Overview
This workspace is a specialized **Backend Intelligence Hub**. It uses data-driven reasoning to design and implement high-fidelity backend systems.

## Rules & Skills
- **Skill Path**: `.claude/skills/backend-promax/SKILL.md`
- **Data Path**: `.shared/backend-promax/data/`

## Core Commands
- **Reasoning**: Always query the `.csv` files in the data path before proposing an architecture or tech stack.
- **Workflow**: 
    1. Identify requirement.
    2. Lookup reasoning data.
    3. Propose Senior-level solution.

## Tech Stack Guidelines
- Refer to `tech-stacks.csv` for optimal framework choice (e.g., Rust for HFT, Go for Streaming, Python for AI).

## Architectural Norms
- Prefer **Modular Monolith** for growth stages.
- Prefer **Event-Driven** for complex distributed states.
- Always include **Security Deep Dive** and **Edge Case** analysis.
