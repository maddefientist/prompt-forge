# Pattern: Self-Hosted Media Application

**Category:** Web Application
**Deployment:** Docker / Self-hosted (Unraid, NAS, homelab)
**Complexity:** High
**Example Project:** TripMerge (group travel photo sharing)

---

## When to Use This Pattern

- Building a media management application (photos, videos, documents)
- Self-hosted / privacy-first requirements
- Need for AI/ML processing (face detection, tagging, search)
- Multi-user with sharing/collaboration features
- Homelab deployment (Unraid, Synology, bare metal)

---

## Architecture Template

```
┌─────────────────────────────────────────────────────────────┐
│                      Reverse Proxy                          │
│                 (Nginx Proxy Manager / Traefik)             │
└─────────────────────────────────────────────────────────────┘
                              │
                              ▼
┌─────────────────────────────────────────────────────────────┐
│                         Frontend                             │
│                    (Next.js + PWA)                          │
└─────────────────────────────────────────────────────────────┘
                              │
                              ▼
┌─────────────────────────────────────────────────────────────┐
│                        Backend API                           │
│                   (FastAPI / NestJS)                        │
└─────────────────────────────────────────────────────────────┘
          │              │              │              │
          ▼              ▼              ▼              ▼
    ┌──────────┐  ┌──────────┐  ┌──────────┐  ┌──────────┐
    │ Database │  │  Cache   │  │  Queue   │  │ Storage  │
    │(Postgres)│  │ (Redis)  │  │ (Redis)  │  │ (MinIO)  │
    └──────────┘  └──────────┘  └──────────┘  └──────────┘
                                     │
                                     ▼
                              ┌──────────┐
                              │ Workers  │
                              │ (AI/ML)  │
                              └──────────┘
```

---

## Standard Tech Stack

| Layer | Technology | Rationale |
|-------|------------|-----------|
| Frontend | Next.js (App Router) + TypeScript | PWA-ready, SSR, great DX |
| UI | Tailwind + shadcn/ui | Fast development, consistent design |
| Backend | FastAPI (Python) | ML ecosystem, async, fast |
| Database | PostgreSQL + pgvector | Relational + vector embeddings |
| Cache/Queue | Redis | Versatile, well-supported |
| Storage | MinIO (S3-compatible) | Works with Unraid, standard API |
| AI/ML | InsightFace, CLIP, etc. | Containerized, local-first |
| Container | Docker Compose | Standard, works everywhere |

---

## Standard Features

### MVP Features
- [ ] User authentication (JWT or session-based)
- [ ] User roles (owner, admin, member, viewer)
- [ ] Create shared spaces/albums
- [ ] Invite system (email or link)
- [ ] Upload media (chunked for large files)
- [ ] Preserve originals + generate thumbnails
- [ ] Deduplication (hash-based + perceptual)
- [ ] Browse by timeline
- [ ] Basic search
- [ ] Download/export

### Enhanced Features
- [ ] Face detection + clustering
- [ ] Object/scene tagging
- [ ] Map view (GPS EXIF)
- [ ] Smart albums (auto-generated)
- [ ] Comments/reactions
- [ ] Activity feed
- [ ] Storage quotas

### Monetization-Ready
- [ ] Plans/tiers configuration
- [ ] Feature flags
- [ ] Stripe integration (scaffolded)

---

## Security Checklist

### Authentication
- [ ] Argon2/bcrypt password hashing
- [ ] JWT with rotation OR secure cookies
- [ ] CSRF protection (if cookies)
- [ ] MFA option (TOTP)
- [ ] Rate limiting on auth endpoints

### Authorization
- [ ] RBAC with principle of least privilege
- [ ] Resource-level permissions
- [ ] Signed URLs for storage access

### Data Protection
- [ ] TLS everywhere
- [ ] Secrets via environment variables
- [ ] Audit logging for sensitive actions
- [ ] Soft delete with retention period
- [ ] EXIF stripping option on export

### Input Validation
- [ ] File type validation (not just extension)
- [ ] File size limits
- [ ] Dangerous file blocking
- [ ] SQL injection prevention
- [ ] XSS prevention

---

## Deployment Checklist

### Docker Compose Structure
```yaml
services:
  web:        # Frontend
  api:        # Backend
  worker:     # Background jobs
  db:         # PostgreSQL
  redis:      # Cache/Queue
  minio:      # Object storage
  ai:         # ML worker (optional, separate)
```

### Unraid-Specific
- Use NFS-aware storage paths
- Mount Unraid shares for persistent storage
- Consider separate docker-compose.gpu.yml for AI

### Reverse Proxy
- TLS termination
- WebSocket support (for real-time updates)
- Proper headers (CORS, security headers)

---

## Phase Template

### Phase A: Foundation
- Project scaffold
- Docker Compose setup
- Database schema + migrations
- Authentication system
- Basic user management

### Phase B: Core Media
- Upload system (chunked)
- Thumbnail generation
- Storage integration
- Timeline browse view

### Phase C: Organization
- Deduplication pipeline
- Albums/spaces
- Invite system
- Permissions

### Phase D: Intelligence
- AI worker setup
- Face detection pipeline
- Clustering/tagging
- People view

### Phase E: Polish
- Search
- Export/sharing
- Security hardening
- Documentation
- Tests

### Phase F: Extras
- Optional integrations (OpenRouter, etc.)
- Monetization scaffolding
- Advanced features

---

## Common Pitfalls

| Pitfall | Solution |
|---------|----------|
| Blocking API on media processing | Use async workers + job queue |
| Exposing storage directly | Always use signed URLs |
| Large upload failures | Implement chunked uploads with resume |
| Face clustering at scale | Batch processing, incremental updates |
| Mobile upload UX | PWA with offline queue |

---

## Reference Implementation

See TripMerge project prompt for a complete example using this pattern.

---

## Customization Points

When using this pattern, customize:

1. **Domain-specific features** - What makes your app unique
2. **AI capabilities** - Which models, local vs API
3. **Sharing model** - Public links, permissions, etc.
4. **Storage strategy** - S3-compatible vs filesystem
5. **Scale requirements** - Homelab vs multi-tenant SaaS
