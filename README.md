# 🚀 VirtualBox Guest Additions Auto Installer for Ubuntu

This project provides a **bash script** to install VirtualBox Guest Additions on an Ubuntu Virtual Machine. It enables:

- 📂 Shared folders
- 🖱️ Mouse integration
- 🖥️ Auto-resize display
- 📋 Shared clipboard (host ↔ guest)
- 🖱️ Drag and drop

---

## 📦 Prerequisites

Ensure the following before starting:

- You are using **VirtualBox**
- You have installed Ubuntu (GUI recommended)
- The **Guest Additions CD image** is available (`VBoxGuestAdditions.iso`)

---

## 🛠️ Setup Instructions

### 1. 📁 Clone or Download the Script

```bash
git clone https://github.com/Yaswanthkumarreddyundela/automation.git
cd automation
````

---

### 2. 🧾 Make the Script Executable

```bash
chmod +x install_guest_additions.sh
```

---

### 3. 🚀 Run the Installer Script

```bash
./install_guest_additions.sh
```

The script will:

* Update the system
* Install necessary packages (`build-essential`, `dkms`, `linux-headers`)
* Mount the Guest Additions ISO
* Run the installer
* Reboot the VM

---

## 🧪 Features to Verify After Reboot

| Feature                | Where to Enable (if needed)                |
| ---------------------- | ------------------------------------------ |
| **Shared Clipboard**   | Devices → Shared Clipboard → Bidirectional |
| **Drag and Drop**      | Devices → Drag and Drop → Bidirectional    |
| **Auto Screen Resize** | Maximize the window to test                |
| **Shared Folders**     | VM Settings → Shared Folders               |

---

## ❗ Troubleshooting

### ❌ Screen resolution doesn’t resize

```bash
sudo apt install virtualbox-guest-utils virtualbox-guest-x11
sudo reboot
```

### ❌ `/mnt/cdrom/VBoxLinuxAdditions.run: Permission denied`

```bash
sudo chmod +x /mnt/cdrom/VBoxLinuxAdditions.run
sudo /mnt/cdrom/VBoxLinuxAdditions.run
```

### ❌ “Unable to insert the Guest Additions CD image”

* Go to **Devices → Optical Drives → Choose Disk Image**
* Select the ISO manually from your system:

  * Usually located at:
    `C:\Program Files\Oracle\VirtualBox\VBoxGuestAdditions.iso`

### ❌ Guest Additions not working in Ubuntu Server (no GUI)?

Install GUI manually:

```bash
sudo apt install ubuntu-desktop -y
```

---

## 📁 Files

| File                         | Description                            |
| ---------------------------- | -------------------------------------- |
| `install_guest_additions.sh` | Bash script to install Guest Additions |
| `README.md`                  | This documentation file                |

---

## 📜 License

MIT License – Use freely for personal or commercial projects.

---


