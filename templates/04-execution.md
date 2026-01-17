# Execution Prompt Template

_Use this template to generate the final execution prompt from validated requirements._

---

```markdown
# [PROJECT NAME] - Execution Prompt

## Role

You are a senior full-stack engineer with expertise in [RELEVANT DOMAINS]. Build a production-ready [APPLICATION TYPE] called [PROJECT NAME].

---

## 0. Outcome

Create [DEPLOYMENT TYPE] application that lets users:

1. [PRIMARY USER CAPABILITY 1]
2. [PRIMARY USER CAPABILITY 2]
3. [PRIMARY USER CAPABILITY 3]

**Core differentiator:**
[WHAT MAKES THIS DIFFERENT/BETTER THAN ALTERNATIVES]

---

## 1. Technical Stack

| Layer | Technology | Notes |
|-------|------------|-------|
| Frontend | [TECH] | [SPECIFIC VERSION/CONFIG] |
| Backend | [TECH] | [SPECIFIC VERSION/CONFIG] |
| Database | [TECH] | [SPECIFIC VERSION/CONFIG] |
| Cache | [TECH] | [IF APPLICABLE] |
| Queue | [TECH] | [IF APPLICABLE] |
| Storage | [TECH] | [IF APPLICABLE] |
| AI/ML | [TECH] | [IF APPLICABLE] |

---

## 2. Architecture

### System Diagram

```
[ASCII ARCHITECTURE DIAGRAM]
```

### Services

| Service | Purpose | Port |
|---------|---------|------|
| [SERVICE] | [WHAT IT DOES] | [PORT] |

### Data Model

[ENTITY DEFINITIONS WITH FIELDS AND RELATIONSHIPS]

---

## 3. Features - MVP

### Feature: [NAME]
**Description:** [WHAT IT DOES]
**User flow:**
1. [STEP]
2. [STEP]
**Acceptance criteria:**
- [ ] [TESTABLE CRITERION]
- [ ] [TESTABLE CRITERION]

[REPEAT FOR ALL MVP FEATURES]

---

## 4. Features - Post-MVP

[FEATURES FOR LATER PHASES]

---

## 5. Security Requirements

### Authentication
- [SPECIFIC AUTH IMPLEMENTATION]

### Authorization
- [RBAC/PERMISSION MODEL]

### Input Validation
- [VALIDATION RULES]

### Data Protection
- [ENCRYPTION/HANDLING REQUIREMENTS]

### Required Security Measures
- [ ] Rate limiting: [SPECIFIC LIMITS]
- [ ] Password hashing: [ALGORITHM + PARAMS]
- [ ] CSRF protection: [METHOD]
- [ ] XSS prevention: [METHOD]
- [ ] SQL injection prevention: [METHOD]
- [ ] Audit logging: [WHAT TO LOG]
- [ ] Secrets via env vars
- [ ] Signed URLs for storage

---

## 6. Deployment

### Target Environment
[SPECIFIC ENVIRONMENT DETAILS]

### Container Configuration
[DOCKER/COMPOSE REQUIREMENTS]

### Reverse Proxy
[NGINX/TRAEFIK/ETC REQUIREMENTS]

### Storage Paths
[SPECIFIC MOUNT POINTS/PATHS]

---

## 7. Deliverables

- [ ] Complete source code with all services
- [ ] `docker-compose.yml` (production)
- [ ] `docker-compose.dev.yml` (development)
- [ ] `.env.example` with all configuration options
- [ ] Database migrations
- [ ] Seed script (create admin user)
- [ ] README with:
  - [ ] Installation instructions
  - [ ] Reverse proxy configuration
  - [ ] Backup/restore procedures
  - [ ] Security checklist
- [ ] Test suite covering:
  - [ ] Authentication flows
  - [ ] Authorization/permissions
  - [ ] Critical business logic
- [ ] Health check endpoints
- [ ] API documentation (OpenAPI/Swagger)

---

## 8. Execution Phases

### Phase A: [NAME]

**Goal:** [WHAT THIS PHASE ACHIEVES]

**Build:**
1. [SPECIFIC TASK]
2. [SPECIFIC TASK]
3. [SPECIFIC TASK]

**Acceptance Criteria:**
- [ ] [TESTABLE CRITERION]
- [ ] [TESTABLE CRITERION]
- [ ] Tests pass
- [ ] Linting passes

**STOP** - Review with user before Phase B.

---

### Phase B: [NAME]

**Goal:** [WHAT THIS PHASE ACHIEVES]

**Build:**
1. [SPECIFIC TASK]
2. [SPECIFIC TASK]

**Acceptance Criteria:**
- [ ] [TESTABLE CRITERION]
- [ ] Tests pass
- [ ] Linting passes

**STOP** - Review with user before Phase C.

---

[CONTINUE FOR ALL PHASES]

---

## 9. Constraints

- No over-engineering - build exactly what's specified
- Security is non-negotiable - implement all security requirements
- Each phase must be complete and tested before proceeding
- Document any deviations from the plan
- Ask if blocked - don't guess

---

## 10. Begin

Start with Phase A. Create the project structure, set up Docker configuration, and implement [PHASE A SPECIFICS].
```

---

## Template Usage Notes

1. Replace all `[BRACKETED]` placeholders with project-specific values
2. Remove any sections not applicable to the project
3. Add project-specific sections if needed
4. Ensure all acceptance criteria are testable
5. Keep phase sizes manageable (2-4 hours of work each)
6. Include explicit STOP points between phases
