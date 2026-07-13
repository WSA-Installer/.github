# Branch and Commit Convention

This document describes the branch naming and commit message conventions for WSA Installer.

## Branch Naming

### Format

```
<type>/<short-description>
```

### Types

| Type | Description | Example |
|:-----|:------------|:--------|
| `feature` | New feature | `feature/add-version-manager` |
| `fix` | Bug fix | `fix/adb-connection-timeout` |
| `docs` | Documentation | `docs/update-installation-guide` |
| `refactor` | Code refactoring | `refactor/simplify-download-logic` |
| `perf` | Performance | `perf/optimize-chunk-download` |
| `test` | Tests | `test/add-installer-logic-tests` |
| `build` | Build system | `build/update-nsis-script` |
| `ci` | CI/CD | `ci/add-release-workflow` |
| `release` | Release prep | `release/v1.3.0` |
| `hotfix` | Critical fix | `hotfix/fix-service-crash` |

### Examples

```
feature/add-version-manager
fix/adb-connection-timeout
docs/update-installation-guide
release/v1.3.0
hotfix/fix-service-crash
```

## Commit Messages

### Format

```
<type>(<scope>): <description>

[optional body]

[optional footer]
```

### Types

| Type | Description |
|:-----|:------------|
| `feat` | New feature |
| `fix` | Bug fix |
| `docs` | Documentation changes |
| `style` | Code style changes (formatting, etc.) |
| `refactor` | Code refactoring |
| `perf` | Performance improvements |
| `test` | Adding or updating tests |
| `build` | Build system changes |
| `ci` | CI/CD changes |
| `chore` | Maintenance tasks |

### Scopes

| Scope | Description |
|:------|:------------|
| `installer` | Main installer |
| `service` | Background service |
| `webdav` | File sharing |
| `ui` | User interface |
| `build` | Build pipeline |
| `docs` | Documentation |

### Examples

```
feat(installer): add parallel chunked download with resume
fix(service): resolve WSA port detection timeout
docs(readme): update installation guide
build(nsis): add silent install support
refactor(installer): simplify extract_7z function
perf(download): optimize chunk merging
test(installer): add download resume tests
```

### Breaking Changes

For breaking changes, add `BREAKING CHANGE:` in the footer:

```
feat(api): change config endpoint response format

BREAKING CHANGE: config response now uses nested structure
```

## Pull Requests

### Title Format

```
<type>(<scope>): <description>
```

### Description

- What does this PR do?
- Why is this change needed?
- How was this tested?

### Checklist

- [ ] Code follows project style
- [ ] Self-review completed
- [ ] Tests added/updated
- [ ] Documentation updated
- [ ] No breaking changes (or documented)
