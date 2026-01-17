# Prompt Forge

A repeatable pipeline for transforming natural language ideas into production-ready applications using Claude Code.

## The Pipeline

```
CAPTURE → STRUCTURE → VALIDATE → EXECUTE → REVIEW
   │          │           │          │         │
   ▼          ▼           ▼          ▼         ▼
 Raw idea  Requirements  Opus      Sonnet   Checkpoints
           document     review    builds    between
                                            phases
```

## Quick Start

### One-time setup (per machine)

```bash
# Clone the repo
git clone https://github.com/maddefientist/prompt-forge.git

# Install the global Claude instructions
cp prompt-forge/CLAUDE.md ~/.claude/CLAUDE.md
```

### Usage

```bash
# Start any project, anywhere
cd your-project-directory
claude "new project: describe your idea here"

# Claude will guide you through:
# 1. Capturing your idea
# 2. Structuring requirements
# 3. Validating the plan
# 4. Executing in phases
# 5. Reviewing each phase
```

## Commands

| Command | Description |
|---------|-------------|
| `new project: [idea]` | Start the full pipeline |
| `structure this` | Convert existing context to requirements |
| `validate this` | Run validation on a prompt/requirements |
| `execute this` | Execute a validated prompt |
| `phase review` | Review current phase |
| `save to library` | Save validated prompt as reusable pattern |
| `show library` | List available patterns |
| `use pattern: [name]` | Start from a library pattern |

## Directory Structure

```
prompt-forge/
├── CLAUDE.md              # Global instructions (copy to ~/.claude/)
├── templates/
│   ├── 01-capture.md      # Idea capture template
│   ├── 02-requirements.md # Structured requirements
│   ├── 03-validation.md   # Validation checklist
│   ├── 04-execution.md    # Execution prompt template
│   └── 05-phase-review.md # Phase review checklist
└── library/
    └── patterns/          # Reusable validated patterns
        └── self-hosted-media-app.md
```

## Model Selection

| Stage | Recommended | Why |
|-------|-------------|-----|
| Capture | Any | Conversational |
| Structure | Opus / GPT-4+ | Needs reasoning |
| Validate | Opus | Critical review |
| Execute | Sonnet | Cost-effective |
| Review | Sonnet/Opus | Depends on complexity |

## Templates

### 01-capture.md
Structured template for capturing raw ideas including:
- Problem statement
- Target users
- Core features
- Technical constraints
- Security requirements

### 02-requirements.md
Full requirements document structure:
- User stories
- Technical architecture
- Data model
- API design
- Phased delivery plan

### 03-validation.md
Comprehensive validation checklist:
- Completeness checks
- Security review (OWASP Top 10)
- Feasibility assessment
- Architecture review
- Clarity verification

### 04-execution.md
Execution prompt template with:
- Role definition
- Tech stack specification
- Feature breakdown
- Security requirements
- Phased execution plan

### 05-phase-review.md
Phase completion checklist:
- Deliverables verification
- Code quality checks
- Security review
- Technical debt tracking

## Library

The `library/patterns/` directory contains validated, reusable prompt patterns for common application types:

- **self-hosted-media-app.md** - Pattern for photo/video management apps with AI features

Add your own patterns as you complete projects.

## Updating

When you improve the pipeline:

```bash
# Update the repo
cd prompt-forge
git pull

# Re-install global instructions
cp CLAUDE.md ~/.claude/CLAUDE.md
```

## Philosophy

1. **Artifacts at every stage** - Nothing lives only in chat context
2. **Explicit validation** - Review before execution
3. **Phase checkpoints** - User reviews between phases
4. **Reusable patterns** - Build a library over time
5. **Model-appropriate** - Right model for each task

## License

MIT - Use freely, modify as needed.
