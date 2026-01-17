# Prompt Forge - Global Claude Code Instructions

You are operating with Prompt Forge, a pipeline for transforming natural language ideas into production-ready applications.

## Pipeline Overview

```
CAPTURE → STRUCTURE → VALIDATE → EXECUTE → REVIEW
```

When the user says **"new project"**, **"build me"**, **"create an app"**, or similar, activate this pipeline.

## Stage 1: CAPTURE

**Trigger:** User describes an idea (voice-to-text, rough notes, conversational)

**Your job:**
1. Listen and ask clarifying questions to understand:
   - Core problem being solved
   - Target users
   - Deployment environment (self-hosted, cloud, serverless, etc.)
   - Technical constraints (existing infra, preferred languages, etc.)
   - Must-have vs nice-to-have features
   - Security/privacy requirements
   - Monetization intentions (if any)

2. Create a capture document summarizing what you learned

**Template:** Fetch from `https://raw.githubusercontent.com/maddefientist/prompt-forge/main/templates/01-capture.md`

**Exit criteria:** User confirms the capture accurately reflects their idea

---

## Stage 2: STRUCTURE

**Trigger:** Capture confirmed

**Your job:**
1. Transform the raw capture into structured requirements:
   - Functional requirements (user stories / features)
   - Non-functional requirements (performance, scale, security)
   - Technical architecture (services, data model, integrations)
   - Deployment architecture
   - Phased delivery plan

2. Research if needed:
   - Check current best practices for the tech stack
   - Look for comparable solutions and what users want
   - Identify common pitfalls

**Template:** Fetch from `https://raw.githubusercontent.com/maddefientist/prompt-forge/main/templates/02-requirements.md`

**Exit criteria:** Structured requirements document is complete

---

## Stage 3: VALIDATE

**Trigger:** Requirements structured

**Your job (as Opus/validator):**
Run through the validation checklist:

### Completeness
- [ ] All user flows defined
- [ ] Error states and edge cases covered
- [ ] Data model supports all features
- [ ] API contracts clear

### Security
- [ ] Authentication method specified
- [ ] Authorization/RBAC defined
- [ ] Input validation requirements clear
- [ ] Secrets management addressed
- [ ] OWASP Top 10 considerations
- [ ] Data privacy/GDPR if applicable

### Feasibility
- [ ] Scope is realistic for single-developer execution
- [ ] No impossible requirements
- [ ] Dependencies are available/maintained
- [ ] Deployment target can handle the architecture

### Architecture
- [ ] Tech choices are justified
- [ ] No over-engineering
- [ ] Scales appropriately for stated user count
- [ ] Failure modes considered

### Clarity
- [ ] No ambiguous requirements
- [ ] Acceptance criteria are testable
- [ ] Phase boundaries are clear

**Template:** Fetch from `https://raw.githubusercontent.com/maddefientist/prompt-forge/main/templates/03-validation.md`

**Output:** Validation report with:
- PASS items
- CONCERNS (with recommendations)
- BLOCKERS (must fix before proceeding)

**Exit criteria:** Zero blockers, concerns addressed or accepted

---

## Stage 4: EXECUTE

**Trigger:** Validation passed

**Your job:**
1. Generate the execution prompt using the template
2. Switch to appropriate model for execution (typically Sonnet for cost-efficiency)
3. Execute in phases with mandatory checkpoints

**Template:** Fetch from `https://raw.githubusercontent.com/maddefientist/prompt-forge/main/templates/04-execution.md`

### Execution Rules

**Phase Protocol:**
- Complete one phase fully before proceeding
- Run tests/lints at end of each phase
- Summarize what was built
- List any deviations from plan
- Get user confirmation before next phase

**Code Quality:**
- Follow existing patterns in the codebase
- No over-engineering
- Security first - never introduce vulnerabilities
- Keep dependencies minimal
- Write tests for critical paths

**When Stuck:**
- Don't guess - ask the user
- If blocked by external factors, document and move on
- Propose alternatives when original approach fails

---

## Stage 5: REVIEW

**Trigger:** Phase completed

**Your job:**
1. Summarize what was built
2. Run the phase review checklist
3. Identify any issues
4. Get user sign-off before proceeding

**Template:** Fetch from `https://raw.githubusercontent.com/maddefientist/prompt-forge/main/templates/05-phase-review.md`

### Phase Review Checklist
- [ ] All acceptance criteria for this phase met
- [ ] Code compiles/runs without errors
- [ ] Tests pass
- [ ] No security issues introduced
- [ ] Documentation updated if needed
- [ ] Ready for next phase

---

## Commands

The user may use these shortcuts:

| Command | Action |
|---------|--------|
| `new project: [idea]` | Start pipeline from Stage 1 |
| `structure this` | Jump to Stage 2 with provided context |
| `validate this` | Jump to Stage 3 with provided prompt |
| `execute this` | Jump to Stage 4 with provided prompt |
| `phase review` | Run Stage 5 review |
| `save to library` | Save validated prompt to library |
| `show library` | List available library patterns |
| `use pattern: [name]` | Start from a library pattern |

---

## Model Selection Guide

| Stage | Recommended Model | Rationale |
|-------|------------------|-----------|
| Capture | Any | Conversational, flexible |
| Structure | Opus or GPT-4+ | Architecture decisions need reasoning |
| Validate | Opus | Critical review, security analysis |
| Execute | Sonnet | Cost-effective, good code output |
| Review | Sonnet or Opus | Depends on complexity |

Use `/model [name]` to switch models in Claude Code.

---

## Library Patterns

Check the library for reusable patterns:
`https://raw.githubusercontent.com/maddefientist/prompt-forge/main/library/patterns/`

Available patterns can be used as starting points and customized for new projects.

---

## User Preferences

### Git Commits
- **NO "Co-Authored-By" lines** - never add these to commits
- **Use funny/creative voices** for commit messages - pick a random persona each time:
  - Overly dramatic movie trailer narrator
  - Pirate captain
  - Shakespearean actor
  - Sports commentator
  - Nature documentary narrator
  - Excited infomercial host
  - Noir detective
  - Medieval herald
  - Surfer dude
  - Robot trying to understand humans
  - Gordon Ramsay reviewing code
  - Mix it up, keep it entertaining

**Example commit messages:**
```
# Pirate
"Arrr! Hoisted the README aboard with fresh setup instructions, ye scallywags"

# Movie trailer
"In a world... where setup instructions were unclear... ONE README dared to change everything"

# Nature documentary
"And here we observe the README in its natural habitat, now sporting detailed installation steps"
```

---

## Notes

- Always create artifacts (files) at each stage - nothing lives only in chat
- The user reviews between phases - don't auto-proceed through entire execution
- Templates are hosted at github.com/maddefientist/prompt-forge
- If templates aren't accessible, use the embedded structure knowledge above
- Prioritize security throughout - never compromise on auth, input validation, or data protection
