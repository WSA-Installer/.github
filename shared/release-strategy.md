# Release Strategy

This document describes the release process for WSA Installer repositories.

## Versioning

WSA Installer follows [Semantic Versioning](https://semver.org/):

```
MAJOR.MINOR.PATCH
```

- **MAJOR** — Breaking changes or major rewrites
- **MINOR** — New features (backward compatible)
- **PATCH** — Bug fixes (backward compatible)

### Current Version

- **App Version:** 1.2.0.0
- **WSA Build:** 2407.40000.4.0

## Release Cadence

| Type | Frequency | Description |
|:-----|:----------|:------------|
| Major | As needed | Breaking changes, major features |
| Minor | Monthly | New features, improvements |
| Patch | Weekly (as needed) | Bug fixes, security updates |

## Release Process

### 1. Prepare Release

1. Create a `release/v{VERSION}` branch from `main`
2. Update version numbers in:
   - `app.py` — `APP_ID` suffix
   - `file_version_info.txt` — Version strings
   - `WSA_Installer_Setup.nsi` — `APP_VERSION`
   - `README.md` — Badge version
3. Update `CHANGELOG.md` with release notes
4. Update `ROADMAP.md` if needed

### 2. Test

1. Run the full build: `build.bat`
2. Test on Windows 10 and Windows 11
3. Test all flows: install, repair, uninstall, update
4. Test Play Store integration
5. Test background service
6. Test file sharing

### 3. Create Release

1. Merge `release/v{VERSION}` into `main`
2. Create a GitHub Release with tag `v{VERSION}`
3. Upload artifacts:
   - `WSA_Installer_Setup.exe`
   - `bundle.wsa`
4. Use the release notes template
5. Publish the release

### 4. Post-Release

1. Update the website with new version
2. Announce on YouTube
3. Update documentation if needed

## Artifact Hashes

Always include SHA256 checksums in release notes:

```bash
# Windows PowerShell
Get-FileHash WSA_Installer_Setup.exe -Algorithm SHA256
Get-FileHash bundle.wsa -Algorithm SHA256
```

## Release Notes

Use the [release notes template](release-notes-template.md) for consistency.

## Hotfixes

For critical bugs:

1. Create a `hotfix/v{VERSION}` branch from `main`
2. Fix the bug
3. Test thoroughly
4. Create a patch release
5. Skip the monthly cycle if urgent

## Branch Protection

- `main` — Protected, requires PR review
- `release/*` — Protected, requires PR review
- `feature/*` — Unprotected, delete after merge
- `fix/*` — Unprotected, delete after merge
