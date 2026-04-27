# 📘 Hardened-Acer-Windows  
*A Windows 11 Home Security Baseline Project for the Acer Predator Helios 16*

<p align="center">
  <img src="assets/security_banner.png" alt="Hardened Windows 11 Home Workstation Banner">
</p>

---

# 🔎 Overview

**Hardened-Acer-Windows** is a practical, documentation‑driven project focused on transforming a consumer‑grade Windows 11 Home installation into a **secure, least‑privilege, attack‑resistant workstation**.

This system — the Acer Predator Helios 16 — serves as the **primary Windows management node** in a multi‑device security lab. The goal is to apply real‑world hardening techniques, document each step, and build a reusable baseline that reflects professional Windows security engineering practices.

This project complements the Linux‑based *Project Ghost Machine* by showcasing the ability to harden **both Windows and Linux environments** with the same level of rigor.

---

# 🖥️ System Specifications

**Device Name:** N. Butterfield  
**Model:** Acer Predator Helios 16  
**OS:** Windows 11 Home (64‑bit)  
**Processor:** Intel Core i7‑14700HX (20C/28T, 2.10 GHz)  
**Memory:** 64 GB DDR5 (63.7 GB usable)  
**Graphics:**  
  - NVIDIA GeForce RTX 4070 Laptop GPU (8 GB)  
  - Intel UHD Graphics (128 MB)  
**Storage:** 1 TB NVMe SSD (303 GB used / 954 GB total)  
**System Type:** x64‑based processor  
**Pen & Touch:** None  

---

These specs are included to provide transparency, reproducibility, and context for performance‑related hardening decisions.

---

# 🎯 Hardening Objectives

This project focuses on building a **Windows 11 Home security baseline** that emphasizes:

- **Attack Surface Reduction (ASR)**  
  Disable unnecessary features, services, and entry points.

- **Least Privilege**  
  Reduce administrative exposure and enforce safer defaults.

- **Secure Configuration Baselines**  
  Apply hardened settings through local policy, registry, and PowerShell.

- **Data Protection**  
  Strengthen BitLocker, credential protection, and secure boot posture.

- **Telemetry Minimization**  
  Reduce unnecessary outbound data and improve privacy.

- **Operational Repeatability**  
  Document every step so the baseline can be reproduced or audited.

---

# 🧭 Scope & Methodology

This project uses a **layered hardening approach**, focusing on:

- Local Group Policy (LGPO) where applicable  
- PowerShell‑based configuration  
- Registry‑level hardening  
- Firewall rule refinement  
- Application control and ASR rules  
- Service minimization  
- Account and credential protection  
- Logging and audit policy configuration  

Each change is documented in `/docs` and automated where possible in `/scripts/windows`.

---

# 📁 Repository Structure


This structure mirrors professional Windows hardening repositories used by blue teams and enterprise security engineers.

---

# 🛠️ Implementation Steps

This section outlines the major phases of the hardening process.  
Detailed steps and screenshots will be added to `/docs` as the project evolves.

### **1. Pre‑Hardening Baseline**
- Capture system info  
- Document installed apps  
- Export initial firewall rules  
- Record default services and scheduled tasks  

### **2. Account & Credential Hardening**
- Enforce strong password and lockout policies  
- Disable unnecessary accounts  
- Harden credential caching and LSASS behavior  

### **3. Local Policy & Registry Hardening**
- Apply CIS‑aligned settings where compatible  
- Disable legacy protocols  
- Restrict remote access vectors  

### **4. Attack Surface Reduction**
- Configure ASR rules  
- Disable unneeded Windows features  
- Harden PowerShell execution policy  

### **5. Firewall & Network Hardening**
- Block unused inbound/outbound traffic  
- Create explicit allowlists  
- Export final firewall configuration to `/baselines`  

### **6. Application & Browser Hardening**
- Harden Microsoft Edge  
- Configure SmartScreen  
- Restrict unsigned or unknown executables  

### **7. Logging & Audit Policy**
- Enable detailed logging  
- Configure audit retention  
- Document log sources for monitoring  

### **8. Verification & Testing**
- Validate settings  
- Run security scans  
- Document results in `/docs`  

---

# 🧪 Audit & Verification

Verification is a critical part of this project.  
The following will be documented:

- Before/after comparisons  
- Screenshots of applied policies  
- PowerShell validation outputs  
- Firewall rule diffs  
- ASR rule status  
- Event log confirmations  

This ensures the hardening is **measurable, repeatable, and defensible**.

---

# 📊 Security Posture Dashboard

| Component | Status | Last Audit |
| :--- | :--- | :--- |
| **Data at Rest (FDE)** | ✅ 100% Encrypted | 2026‑04‑26 |
| **Identity Protection** | ✅ TPM 2.0 + 48‑digit Key | 2026‑04‑26 |
| **Network Perimeter** | ✅ Hardened (Spooler Disabled) | 2026‑04‑26 |
| **Platform** | 💻 Windows 11 Home | 2026‑04‑26 |

This dashboard provides a quick, high‑level snapshot of the workstation’s current security posture.  
As the hardening process evolves, these values will be updated and expanded.

---

# 🏆 Milestones

![Encryption Status](https://img.shields.io/badge/BitLocker-100%25-brightgreen)
![Security Level](https://img.shields.io/badge/Security_Level-Hardened-blue)
![Platform](https://img.shields.io/badge/OS-Windows_11_Home-lightgrey)

> **Milestone Achieved:** Full Disk Encryption is verified, identity protection is enforced, and the network attack surface has been significantly reduced.

This section will grow as additional hardening phases are completed.

---

# 🔐 Hardening Verification

| Initial Status (Vulnerable) | Hardened Status (Secured) |
| :--- | :--- |
| Default Windows 11 Home configuration | Hardened baseline with ASR, firewall refinement, and credential protection |
| Minimal audit logging | Enhanced audit policy with expanded event coverage |
| Broad attack surface | Reduced services, minimized features, and restricted execution paths |

> 🔍 **View the Full Audit:**  
> [Detailed Side-by-Side Verification Data](docs/System_Baseline.md#audit-evidence-before-vs-after)

This section highlights the before‑and‑after impact of the hardening process.  
The linked audit file provides deeper evidence, screenshots, and validation outputs.

---

# 🗺️ Roadmap

- [ ] Add initial PowerShell scripts to `/scripts/windows`  
- [ ] Begin documenting hardening steps in `/docs`  
- [ ] Export first baseline configs to `/baselines`  
- [ ] Add diagrams to `/assets`  
- [ ] Create a verification checklist  
- [ ] Add optional automation for baseline deployment  

---

# 🤝 Contributions

This is a personal security engineering project, but feedback, suggestions, and improvements are always welcome.
