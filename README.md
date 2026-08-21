<div align="center">

<a href="https://github.com/WSA-Installer">
  <img src="https://raw.githubusercontent.com/WSA-Installer/wsa-installer/main/assets/icon.png" alt="WSA Installer" width="120">
</a>

# WSA Installer

### The Modern Windows Subsystem for Android Installation & Management Toolkit

![Organization](https://img.shields.io/badge/Organization-WSA--Installer-1B72C0?style=for-the-badge&logo=github)
![Repositories](https://img.shields.io/badge/Repositories-5-1B72C0?style=for-the-badge)
![License](https://img.shields.io/badge/License-MIT-yellow?style=for-the-badge)
![GitHub Sponsors](https://img.shields.io/badge/Sponsor-%E2%9D%A4-ff69b4?style=for-the-badge)

[Website](https://wsa-installer-website.vercel.app) · [Download](https://github.com/WSA-Installer/wsa-installer/releases/latest) · [Documentation](https://github.com/WSA-Installer/wsa-installer/tree/main/docs) · [YouTube](https://www.youtube.com/@AT_Tech_Zone)

</div>

---

<br>

## Our Mission

> Provide an easy, powerful, and reliable way to install, repair, update, customize, and manage Windows Subsystem for Android (WSA) with Google Play Store on Windows 10 and Windows 11 — with a beautiful, intuitive interface and advanced automation.

<br>

## Projects

<div align="center">

| Repository | Description | Stars | Language |
|:-----------|:------------|:------|:---------|
| **[wsa-installer](https://github.com/WSA-Installer/wsa-installer)** | Main installer — one-click WSA + Play Store setup with background service, self-update, repair, and file sharing | ![Stars](https://img.shields.io/github/stars/WSA-Installer/wsa-installer?style=social) | ![Python](https://img.shields.io/badge/Python-3776AB?logo=python&logoColor=white) |
| **[embedded-tools](https://github.com/WSA-Installer/wsa-installer/tree/main/embedded-tools)** | Source code for all native modules — ApkIconShlExt, WSA Net Provider, aapt++ | ![Stars](https://img.shields.io/github/stars/WSA-Installer/wsa-installer?style=social) | ![Rust](https://img.shields.io/badge/Rust-000000?logo=rust&logoColor=white) |
| **[wsa-webdav](https://github.com/WSA-Installer/wsa-webdav)** | Headless Android WebDAV server APK — access WSA file system from any browser with root support | ![Stars](https://img.shields.io/github/stars/WSA-Installer/wsa-webdav?style=social) | ![Kotlin](https://img.shields.io/badge/Kotlin-7F52FF?logo=kotlin&logoColor=white) |
| **[wsa-website](https://github.com/WSA-Installer/wsa-website)** | Official website — landing page, documentation, download hub, blog | ![Stars](https://img.shields.io/github/stars/WSA-Installer/wsa-website?style=social) | ![TypeScript](https://img.shields.io/badge/TypeScript-3178C6?logo=typescript&logoColor=white) |
| **[ads-json-data](https://github.com/WSA-Installer/ads-json-data)** | Remote config server — monetization, sponsor content, and update distribution | ![Stars](https://img.shields.io/github/stars/WSA-Installer/ads-json-data?style=social) | ![JSON](https://img.shields.io/badge/JSON-292929?logo=json&logoColor=white) |

</div>

<br>

## v1.2 — What's New

<div align="center">

| Feature | Description |
|:--------|:------------|
| WSA Pacman | Double-click any APK/XAPK/APKS/APKM to install directly into WSA |
| APK File Handler | Registers as Windows handler for APK files with custom icons in Explorer |
| 3-Phase System Check | System validation → Bundle detection → Virtualization bypass |
| Virtualization Bypass | Auto-fixes Hyper-V, KB uninstall, WSL2, Defender, VBS, FsDepends |
| Win10/Win11 Detection | Smart build detection with appropriate GitHub API source |
| Win10 Bundle | Dedicated offline bundle for Windows 10 users |

</div>

<br>

## Features

<div align="center">

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
| Win10/Win11 Bundles | Separate offline bundles for each Windows version |

</div>

<br>

## Technology Stack

<div align="center">

![Python](https://img.shields.io/badge/Python-3.14-3776AB?style=for-the-badge&logo=python&logoColor=white)
![Rust](https://img.shields.io/badge/Rust-Native-000000?style=for-the-badge&logo=rust&logoColor=white)
![Flet](https://img.shields.io/badge/Flet-UI-0078D4?style=for-the-badge)
![Kotlin](https://img.shields.io/badge/Kotlin-7F52FF?style=for-the-badge&logo=kotlin&logoColor=white)
![PyQt6](https://img.shields.io/badge/PyQt6-41CD52?style=for-the-badge&logo=qt&logoColor=white)
![NSIS](https://img.shields.io/badge/NSIS-Installer-FFCC00?style=for-the-badge)

</div>

<br>

## Quick Start

### 1. Download

| File | Size | Description |
|:-----|:-----|:------------|
| [WSA_Installer_Setup.exe](https://github.com/WSA-Installer/wsa-installer/releases/latest) | ~228 MB | Professional NSIS installer |
| [bundle.wsa (Windows 11)](https://github.com/WSA-Installer/wsa-installer/releases/latest) | ~1.21 GB | Pre-packaged WSA bundle for Windows 11 (optional) |
| [bundle_win10.wsa (Windows 10)](https://github.com/WSA-Installer/wsa-installer/releases/latest) | ~1.21 GB | Pre-packaged WSA bundle for Windows 10 (optional) |

### 2. Install

1. Download `WSA_Installer_Setup.exe` from the [latest release](https://github.com/WSA-Installer/wsa-installer/releases/latest)
2. Right-click → **Run as administrator**
3. Follow the 5-step wizard: **Intro → Check → Install → Play Store → Complete**

### 3. Enjoy

- Play Store appears in Start Menu
- Launch Android apps directly
- Background service monitors WSA automatically

<br>

## CLI Reference

```cmd
WSA_Installer_Setup.exe /S                    :: Silent install
WSA_Installer_Setup.exe --repair-wsa          :: Repair WSA
WSA_Installer_Setup.exe --uninstall           :: Uninstall WSA
WSA_Installer_Setup.exe --file-sharing        :: File sharing setup
```

<br>

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
        WI[wsa_init.pyd<br/>WSA Boot/ADB]
        NP[wsa_net_provider.dll<br/>UNC-to-WebDAV]
        APK[ApkIconShlExt.dll<br/>APK Icons]
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
    IL --> WI
    IL --> ADB
    ADB --> WSA
    PS --> PY
    BG --> WSA
    BG --> NP
    RC --> WU
```

> Source code for all native modules is available in [embedded-tools](https://github.com/WSA-Installer/wsa-installer/tree/main/embedded-tools).

<br>

## Supported Platforms

<div align="center">

| OS | Status |
|:---|:-------|
| Windows 11 22H2+ | ![](https://img.shields.io/badge/Supported-3DDC84?style=flat-square) |
| Windows 11 21H2 | ![](https://img.shields.io/badge/Supported-3DDC84?style=flat-square) |
| Windows 10 2004+ (build 19041) | ![](https://img.shields.io/badge/Supported-3DDC84?style=flat-square) |
| Windows 10 < 19041 | ![](https://img.shields.io/badge/Not%20Supported-red?style=flat-square) |

</div>

<br>

## Community

<div align="center">

[![YouTube](https://img.shields.io/badge/YouTube-AT_Tech_Zone-red?style=for-the-badge&logo=youtube)](https://www.youtube.com/@AT_Tech_Zone)
[![Buy Me a Coffee](https://img.shields.io/badge/Buy_Me_a_Coffee-donate-yellow?style=for-the-badge&logo=buy-me-a-coffee)](https://buymeacoffee.com/mrcyberdev)
[![GitHub Discussions](https://img.shields.io/badge/Discussions-Join-1B72C0?style=for-the-badge&logo=github)](https://github.com/WSA-Installer/wsa-installer/discussions)

</div>

<br>

## Contributing

We welcome contributions! See our [Contributing Guide](https://github.com/WSA-Installer/wsa-installer/blob/main/CONTRIBUTING.md) for details.

## License

This project is licensed under the **MIT License** — see [LICENSE](https://github.com/WSA-Installer/wsa-installer/blob/main/LICENSE) for details.

---

<div align="center">

**Built with care by [AT Tech Zone](https://www.youtube.com/@AT_Tech_Zone) — MR CYBER**

![Footer](https://img.shields.io/badge/%C2%A9_2026_AT_Tech_Zone-1B72C0?style=for-the-badge)

</div>
