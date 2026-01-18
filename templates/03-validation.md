# Validation Checklist

## Project: [NAME]

**Validator:** Claude Opus
**Date:** [DATE]
**Requirements Version:** [VERSION]

---

## Quality Gate (Must Pass First)

_These are non-negotiable. If any fail, stop and fix before proceeding to detailed validation._

### Purpose
- [ ] Problem is real and specific (not "would be cool if")
- [ ] Target user is defined (not "everyone")
- [ ] Success is measurable (not "make it better")
- [ ] Solves one core problem well (not many problems poorly)

**Findings:**


### Scope
- [ ] MVP features listed (max 3-5 core features)
- [ ] "Not doing" list exists (explicit boundaries)
- [ ] No feature creep from original ask
- [ ] Each feature ties directly to the core problem

**Findings:**


### Design Intent
- [ ] Custom color palette chosen (not Tailwind/framework defaults)
- [ ] Typography selected (not Inter, not Geist, not system defaults)
- [ ] Visual style matches product purpose/tone
- [ ] Not generic "AI-generated app" aesthetic

**Findings:**


### Deployment Reality
- [ ] Target environment specified
- [ ] CI/CD path defined or understood
- [ ] Domain/hosting decided
- [ ] Rollback/recovery plan exists

**Findings:**


**Quality Gate Status:** PASS / FAIL

_If FAIL: Address issues before continuing to detailed validation below._

---

## Validation Summary

| Category | Status | Blockers | Concerns |
|----------|--------|----------|----------|
| Completeness | | | |
| Security | | | |
| Feasibility | | | |
| Architecture | | | |
| Clarity | | | |

**Overall Status:** PASS / PASS WITH CONCERNS / BLOCKED

---

## 1. Completeness Check

### User Flows
- [ ] All primary user journeys defined
- [ ] All secondary user journeys defined
- [ ] Entry points clear (how users arrive)
- [ ] Exit points clear (how users complete tasks)
- [ ] Empty states defined
- [ ] Error states defined

**Findings:**


### Edge Cases
- [ ] What happens with no data?
- [ ] What happens with large data volumes?
- [ ] What happens with concurrent access?
- [ ] What happens with malformed input?
- [ ] What happens with network failures?
- [ ] What happens with partial failures?

**Findings:**


### Data Model
- [ ] All entities needed for features exist
- [ ] Relationships properly defined
- [ ] Required fields identified
- [ ] Indexing strategy considered
- [ ] Data lifecycle (creation, update, deletion) covered

**Findings:**


### API Contracts
- [ ] All endpoints for features defined
- [ ] Request/response shapes clear
- [ ] Error responses defined
- [ ] Pagination strategy for lists
- [ ] Rate limiting considered

**Findings:**


---

## 2. Security Check

### Authentication
- [ ] Auth method specified and appropriate
- [ ] Password requirements defined (if applicable)
- [ ] Session management approach clear
- [ ] Token refresh strategy (if applicable)
- [ ] MFA considered (if appropriate)
- [ ] Account recovery flow defined

**Findings:**


### Authorization
- [ ] RBAC/permissions model defined
- [ ] All protected resources identified
- [ ] Permission inheritance clear
- [ ] Default permissions appropriate (least privilege)
- [ ] Escalation paths controlled

**Findings:**


### Input Validation
- [ ] All user inputs validated
- [ ] File upload restrictions defined
- [ ] SQL injection prevention
- [ ] XSS prevention
- [ ] CSRF protection
- [ ] Path traversal prevention

**Findings:**


### Data Protection
- [ ] Sensitive data identified
- [ ] Encryption at rest addressed
- [ ] Encryption in transit (TLS)
- [ ] Secrets management approach
- [ ] No secrets in code
- [ ] PII handling appropriate

**Findings:**


### OWASP Top 10 Consideration
- [ ] A01: Broken Access Control
- [ ] A02: Cryptographic Failures
- [ ] A03: Injection
- [ ] A04: Insecure Design
- [ ] A05: Security Misconfiguration
- [ ] A06: Vulnerable Components
- [ ] A07: Auth Failures
- [ ] A08: Data Integrity Failures
- [ ] A09: Logging Failures
- [ ] A10: SSRF

**Findings:**


### Audit & Compliance
- [ ] Security-relevant actions logged
- [ ] Log format appropriate
- [ ] Log retention considered
- [ ] Compliance requirements addressed

**Findings:**


---

## 3. Feasibility Check

### Scope Reality
- [ ] MVP is achievable by single developer
- [ ] Phases are reasonably sized
- [ ] No dependencies on unavailable resources
- [ ] No requirements for non-existent technology

**Findings:**


### Technical Feasibility
- [ ] Chosen stack can deliver requirements
- [ ] Libraries/frameworks are maintained
- [ ] No licensing issues
- [ ] Performance targets achievable with chosen approach

**Findings:**


### Deployment Feasibility
- [ ] Target environment can run the stack
- [ ] Resource requirements realistic
- [ ] Network/firewall requirements clear
- [ ] Backup/recovery approach viable

**Findings:**


---

## 4. Architecture Check

### Tech Choices
- [ ] Each technology choice is justified
- [ ] No resume-driven development
- [ ] Alternatives were considered
- [ ] Stack coherence (parts work well together)

**Findings:**


### Complexity
- [ ] No over-engineering
- [ ] Appropriate for scale requirements
- [ ] Maintainable by intended team size
- [ ] Not under-engineered for stated requirements

**Findings:**


### Failure Modes
- [ ] Single points of failure identified
- [ ] Graceful degradation planned
- [ ] Recovery procedures considered
- [ ] Data loss scenarios addressed

**Findings:**


### Scalability Alignment
- [ ] Architecture matches stated scale needs
- [ ] Not over-architected for small scale
- [ ] Not under-architected for large scale
- [ ] Growth path exists if needed

**Findings:**


---

## 5. Clarity Check

### Ambiguity
- [ ] No vague requirements ("fast", "secure", "easy")
- [ ] All terms defined or obvious
- [ ] No conflicting requirements
- [ ] Priorities clear

**Findings:**


### Testability
- [ ] Acceptance criteria are measurable
- [ ] Success/failure is determinable
- [ ] Edge cases are testable

**Findings:**


### Phase Boundaries
- [ ] Each phase has clear entry criteria
- [ ] Each phase has clear exit criteria
- [ ] Dependencies between phases identified
- [ ] Phases can be validated independently

**Findings:**


---

## Blockers

_Issues that MUST be resolved before execution._

| ID | Issue | Recommendation |
|----|-------|----------------|
| B-01 | | |

---

## Concerns

_Issues that SHOULD be addressed but aren't blocking._

| ID | Issue | Recommendation | Risk if Ignored |
|----|-------|----------------|-----------------|
| C-01 | | | |

---

## Recommendations

_Suggestions for improvement (optional but valuable)._

1.
2.
3.

---

## Validation Outcome

**Status:**

- [ ] APPROVED - Proceed to execution
- [ ] APPROVED WITH NOTES - Proceed, address concerns during execution
- [ ] REVISE - Address blockers before proceeding
- [ ] REJECT - Fundamental issues require re-scoping

**Notes:**


**Validator Signature:** Claude Opus
**Date:** [DATE]
