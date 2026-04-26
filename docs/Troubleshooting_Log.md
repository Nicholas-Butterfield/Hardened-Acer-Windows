# 🛠️ Troubleshooting & Environment Log

This document tracks technical hurdles encountered during the setup and hardening of the Acer Predator Helios 16 workstation, along with the specific command-line solutions implemented.

---

## 🛰️ Multi-Machine Git Synchronization

### Issue: "Unborn Branch" & Conflict with Local Files
**Scenario:** Initializing a local repository in a folder that already contains files (assets) caused a conflict when trying to pull the remote documentation from GitHub.
**Error:** `fatal: Updating an unborn branch with changes added to the index.`

**Resolution:** Implemented a force-reset to align the local environment with the remote "Source of Truth" without losing identical local assets.
```powershell
git fetch origin
git reset --hard origin/main

---
