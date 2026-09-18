# Active Directory Domain Controller Setup

## Overview

This phase focused on building and verifying the Domain Controller for the Active Directory Attack & Defense Lab.

Because the lab is running on an Apple Silicon Mac with ARM-based virtual machines, Ubuntu Server ARM64 and Samba Active Directory Domain Controller were used to provide Active Directory-compatible domain services.

## Domain Controller Configuration

- **Hostname:** `ad-dc01`
- **Active Directory Domain:** `adlab.test`
- **NetBIOS Domain:** `ADLAB`
- **Server Role:** Active Directory Domain Controller
- **DNS Backend:** Samba Internal DNS
- **Platform:** Ubuntu Server ARM64
- **Directory Service:** Samba Active Directory Domain Controller

## Samba AD DC Setup

Samba and the required Active Directory Domain Controller components were installed on the Ubuntu Server VM.

The domain was provisioned using `samba-tool`, creating the `ADLAB.TEST` Active Directory environment.

The Samba-generated Kerberos configuration was installed as the system Kerberos configuration:

```bash
sudo cp /var/lib/samba/private/krb5.conf /etc/krb5.conf
```

The Samba Active Directory Domain Controller service was then enabled and started:

```bash
sudo systemctl enable --now samba-ad-dc
```

## Verification

The Samba AD DC service was verified as active and running:

```bash
sudo systemctl status samba-ad-dc
```

Domain information was verified with:

```bash
sudo samba-tool domain info 127.0.0.1
```

The command confirmed:

- **Forest:** `adlab.test`
- **Domain:** `adlab.test`
- **NetBIOS Domain:** `ADLAB`
- **Domain Controller:** `ad-dc01.adlab.test`
- **DC NetBIOS Name:** `AD-DC01`

The domain functional configuration was also checked using:

```bash
sudo samba-tool domain level show
```

The configured forest and domain functional levels were successfully returned, confirming that the Domain Controller was responding to Active Directory management commands.

## Evidence

![Samba AD Domain Verification](../screenshots/samba-ad-domain-verification.png)

## Result

The Samba Active Directory Domain Controller was successfully provisioned and verified for the `adlab.test` lab domain.
