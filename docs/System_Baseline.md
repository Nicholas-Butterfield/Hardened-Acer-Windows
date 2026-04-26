# System Baseline & Initial Security Audit

**Date:** 2026-04-26  

**Auditor:** Nicholas

## 1. Data at Rest (DAR) Audit
An initial audit of the primary OS volume was performed using `manage-bde`.

### **Audit Findings (Volume C:)**
* **Status:** Fully Decrypted
* **Protection:** OFF
* **Risk Level:** CRITICAL

**Vulnerability Assessment:** The system is currently vulnerable to offline attacks. Lack of Full Disk Encryption (FDE) means the physical theft of the device in a total compromise of data integrity and confidentiality.
