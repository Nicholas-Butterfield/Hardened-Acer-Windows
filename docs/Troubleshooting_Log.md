# 🛠️ Troubleshooting & Environment Log

This document tracks technical hurdles encountered during the setup and hardening of the Acer Predator Helios 16 workstation.

---

## 🛰️ Multi-Machine Git Synchronization

### Issue: "Unborn Branch" & Conflict with Local Files
**Scenario:** Initializing a local repository in a folder that already contains files (assets) caused a conflict when trying to pull the remote documentation.

**Resolution:** Implemented a force-reset to align the local environment with the remote "Source of Truth."

```powershell

git fetch origin
git reset --hard origin/main
```

---

## 📊 Documentation & Metadata

### Issue: GitHub CSV Rendering Error
**Scenario:** The exported PowerShell history CSV failed to render as a table due to an incompatible header.

**Resolution:** Used a PowerShell array manipulation to strip the first line from the file.
```powershell
$content = Get-Content "docs/ps_history.csv"
$content[1..($content.Length - 1)] | Set-Content "docs/ps_history.csv"
```

