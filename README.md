# Active Directory Attack & Defense Lab

A hands-on cybersecurity lab focused on building, securing, testing, and investigating an Active Directory environment.

## Project Status

🚧 In Progress

This repository is updated as each lab component is successfully implemented and verified.

## Current Progress

- ✅ Lab virtualization environment established
- ✅ Ubuntu Server ARM64 configured
- ✅ Samba Active Directory Domain Controller installed
- ✅ `adlab.test` domain provisioned
- ✅ Samba AD DC service verified
- ✅ Windows 11 workstation joined to the domain
- ✅ Active Directory users, groups, and organizational units created
- ✅ Windows security auditing configured and verified
- ✅ Normal domain activity testing
- ✅ Kali Linux ARM attack/testing machine configured and verified
- ✅ ad-enumeration 
- ⏳ Controlled attack simulations
- ⏳ Detection and investigation
- ⏳ Defensive hardening

## Lab Environment

The lab currently consists of:

- **macOS Host** — Physical host system
- **VMware Fusion** — Virtualization platform
- **Ubuntu Server ARM64** — Samba Active Directory Domain Controller
- **Windows 11 ARM** — Domain-joined Windows workstation
- **Kali Linux ARM** — Security testing system

## Active Directory Domain

- **Domain:** `adlab.test`
- **NetBIOS Domain:** `ADLAB`
- **Domain Controller:** `ad-dc01.adlab.test`

## Security Auditing

Windows Security auditing was configured and verified on the domain-joined Windows 11 workstation.

Verified security activity includes:

- **Event ID 4624** — Successful logon
- **Event ID 4625** — Failed logon
- **User Account Management** — Success and Failure auditing enabled

A successful domain logon using `ADLAB\jsmith` and a controlled failed authentication attempt were captured and reviewed in Windows Event Viewer.

## Documentation

- [Lab Environment](docs/01-lab-environment.md)
- [Active Directory Domain Controller Setup](docs/02-active-directory-domain-controller-setup.md)
- [Windows 11 Domain Join](docs/03-domain-join.md)
- [Active Directory Objects](docs/04-active-directory-objects.md)
- [Security Auditing](docs/05-security-auditing.md)
- [Normal Domain Activity Baseline](docs/06-normal-domain-activity.md)

## Evidence

### Samba Active Directory Domain

![Samba AD Domain Verification](screenshots/samba-ad-domain-verification.png)

### Successful Domain Logon

![Successful Domain Logon Event 4624](screenshots/successful-domain-logon-4624.png)

### Failed Authentication

![Failed Logon Event 4625](screenshots/security-event-4625-failed-logon.png)
