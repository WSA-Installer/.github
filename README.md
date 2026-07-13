<div align="center">

<picture>
  <source media="(prefers-color-scheme: dark)" srcset="../wsa-installer/assets/logo-dark.svg">
  <source media="(prefers-color-scheme: light)" srcset="../wsa-installer/assets/logo-light.svg">
  <img alt="WSA Installer" src="../wsa-installer/assets/logo-light.svg" width="120">
</picture>

# WSA Installer

### The Modern Windows Subsystem for Android Installation & Management Toolkit

![Organization](https://img.shields.io/badge/Organization-WSA--Installer-1B72C0?style=for-the-badge&logo=github)
![Repositories](https://img.shields.io/badge/Repositories-3-1B72C0?style=for-the-badge)
![License](https://img.shields.io/badge/License-MIT-yellow?style=for-the-badge)
![GitHub Sponsors](https://img.shields.io/badge/Sponsor-❤️-ff69b4?style=for-the-badge)

[Website](https://wsa-installer.github.io) · [Download](https://github.com/WSA-Installer/wsa-installer/releases/latest) · [Documentation](https://wsa-installer.github.io/docs/) · [YouTube](https://www.youtube.com/@AT_Tech_Zone)

</div>

---

## Our Mission

Provide an easy, powerful, and reliable way to install, repair, update, customize, and manage Windows Subsystem for Android (WSA) with Google Play Store on Windows 10 and Windows 11 — with a beautiful, intuitive interface and advanced automation.

## Projects

| Repository | Description | Status |
|:-----------|:------------|:-------|
| **[wsa-installer](https://github.com/WSA-Installer/wsa-installer)** | Main installer application — one-click WSA + Play Store setup with background service, self-update, repair, and file sharing | ![Active](https://img.shields.io/badge/Active-3DDC84?style=flat-square) |
| **[wsa-webdav](https://github.com/WSA-Installer/wsa-webdav)** | Headless Android WebDAV server APK for WSA — access your Android file system from any browser | ![Active](https://img.shields.io/badge/Active-3DDC84?style=flat-square) |
| **[wsa-website](https://github.com/WSA-Installer/wsa-website)** | Official website — landing page, documentation, download hub | ![Active](https://img.shields.io/badge/Active-3DDC84?style=flat-square) |

## Features

| Feature | Description |
|:--------|:------------|
| Smart System Scan | Detects VT-x/AMD-V, Hyper-V, VirtualMachinePlatform, HypervisorPlatform, WSL via 5 detection methods |
| One-Click Install | Handles download, extraction, configuration, and registration of WSA end-to-end |
| Play Store Integration | Patches Google Apps (MindTheGapps 13.0) with automated ADB authorization |
| Background Service | `WSABackgroundService` monitors WSA status, manages SDK lifecycle, auto-restarts on failure |
| Self-Update | Checks server for updates with 30-chunk parallel download and silent install |
| Repair & Uninstall | Complete WSA management with backup, repair, and clean uninstall flows |
| File Sharing | WebDAV-based drive mounting — access WSA files as Windows network drives |
| Glass Transparency | Modern Windows 11-inspired UI with configurable alpha-blended transparency |
| Remote Config | Server-side configuration updates via Rust security gateway |
| NSIS Installer | Professional Windows setup wizard with maintenance mode |

## Technology Stack

```
┌──────────────────────────────────────────────────────────────┐
│                     Technology Stack                          │
├──────────────────────────────────────────────────────────────┤
│  Python 3.14    │  Flet UI Framework   │  Rust Native (.pyd) │
│  PyQt6          │  PyInstaller         │  Nuitka Compiler    │
│  NSIS           │  ADB                 │  Windows Services   │
│  Kotlin         │  Android SDK         │  WebDAV Protocol    │
└──────────────────────────────────────────────────────────────┘
```

## Quick Start

### Download

| File | Size | Description |
|:-----|:-----|:------------|
| [WSA_Installer_Setup.exe](https://github.com/WSA-Installer/wsa-installer/releases/latest) | ~228 MB | Professional NSIS installer |
| [bundle.wsa](https://github.com/WSA-Installer/wsa-installer/releases/latest) | ~1.21 GB | Pre-packaged WSA bundle (optional) |

### Install

1. Download `WSA_Installer_Setup.exe` from the [latest release](https://github.com/WSA-Installer/wsa-installer/releases/latest)
2. Right-click → **Run as administrator**
3. Follow the 5-step wizard: **Intro → Check → Install → Play Store → Complete**

### CLI

```cmd
WSA_Installer_Setup.exe /S                    :: Silent install
WSA_Installer_Setup.exe --repair-wsa          :: Repair WSA
WSA_Installer_Setup.exe --uninstall           :: Uninstall WSA
WSA_Installer_Setup.exe --file-sharing        :: File sharing setup
```

## Architecture

```mermaid
graph TB
    subgraph "WSA Installer"
        GUI[Flet GUI<br/>5-Step Wizard]
        IL[InstallerLogic<br/>Core Engine]
        RC[RemoteConfigManager<br/>Server Sync]
        BG[WSABackgroundService<br/>Windows Service]
    end

    subgraph "Native Modules"
        WU[widget_ui.pyd<br/>Rust Security Gateway]
        PS[playstore_patcher_mem.pyd<br/>Play Store SDK]
    end

    subgraph "External"
        ADB[ADB Bridge]
        WSA[Windows Subsystem<br/>for Android]
        PY[Embedded Python 3.14]
    end

    GUI --> IL
    IL --> RC
    IL --> WU
    IL --> PS
    IL --> ADB
    ADB --> WSA
    PS --> PY
    BG --> WSA
    RC --> WU
```

## Supported Platforms

| OS | Status |
|:---|:-------|
| Windows 11 22H2+ | ![Supported](https://img.shields.io/badge/Supported-3DDC84?style=flat-square) |
| Windows 11 21H2 | ![Supported](https://img.shields.io/badge/Supported-3DDC84?style=flat-square) |
| Windows 10 2004+ (build 19041) | ![Supported](https://img.shields.io/badge/Supported-3DDC84?style=flat-square) |
| Windows 10 < 19041 | ![Not Supported](https://img.shields.io/badge/Not%20Supported-red?style=flat-square) |

## Community

| Channel | Link |
|:--------|:-----|
| YouTube | [@AT_Tech_Zone](https://www.youtube.com/@AT_Tech_Zone) |
| Buy Me a Coffee | [mrcyberdev](https://buymeacoffee.com/mrcyberdev) |
| GitHub Issues | [Report a Bug](https://github.com/WSA-Installer/wsa-installer/issues/new?template=bug_report.yml) |
| GitHub Discussions | [Ask a Question](https://github.com/WSA-Installer/wsa-installer/discussions) |

## Contributing

We welcome contributions! See our [Contributing Guide](https://github.com/WSA-Installer/wsa-installer/blob/main/CONTRIBUTING.md) for details.

## License

This project is licensed under the **MIT License** — see [LICENSE](https://github.com/WSA-Installer/wsa-installer/blob/main/LICENSE) for details.

---

<div align="center">

**Built with care by [AT Tech Zone](https://www.youtube.com/@AT_Tech_Zone) — MR CYBER**

![Footer](https://img.shields.io/badge/©_2026_AT_Tech_Zone-1B72C0?style=for-the-badge)

</div>
