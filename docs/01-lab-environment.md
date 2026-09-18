# Lab Environment

## Overview

The Active Directory Attack & Defense Lab was built as an isolated virtualized environment for practicing Active Directory administration, security testing, detection, investigation, and defensive hardening.

The lab is hosted on an Apple Silicon Mac using VMware Fusion.

## Host System

- **Host Platform:** macOS
- **Processor Architecture:** Apple Silicon ARM64
- **Hypervisor:** VMware Fusion

## Virtual Machines

### Ubuntu Server — Domain Controller

An Ubuntu Server ARM64 virtual machine was configured to provide Active Directory-compatible domain services using Samba.

- **Hostname:** `ad-dc01`
- **Operating System:** Ubuntu Server ARM64
- **Role:** Samba Active Directory Domain Controller
- **Domain:** `adlab.test`
- **NetBIOS Domain:** `ADLAB`

### Windows 11 — Workstation

A Windows 11 ARM virtual machine is available as the Windows workstation for the lab.

This system will later be configured to communicate with and join the `adlab.test` domain.

### Kali Linux — Security Testing System

A Kali Linux ARM virtual machine is available as the security testing system.

It will be used later for authorized security testing against the isolated Active Directory lab environment.

## Lab Safety

All security testing in this project is restricted to virtual machines and systems specifically configured for this isolated lab.

No testing is performed against systems without authorization.

## Current Status

The lab virtualization environment has been established and the Samba Active Directory Domain Controller has been successfully provisioned.

Further configuration, domain joining, security testing, detection, and defensive hardening will be documented as those phases are completed and verified.
