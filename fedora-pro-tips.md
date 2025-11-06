# 🐧 Fedora Linux — Ultimate Pro Tips & Tricks  
*For Fedora 40+ (Workstation, Silverblue/Kinoite, Server)* 
✅ Tested on Fedora 40 & 41 (as of Nov 2025) 
💡 Author: You — the Fedora Wizard 

---

## 🔥 Must-Know Daily Shortcuts

| Goal | Command / Trick |
|------|-----------------|
| **Reboot quickly** | `sudo systemctl reboot` or `systemctl reboot --no-wall` |
| **Shutdown in 5 min** | `sudo shutdown +5 "Update time!"` → Cancel with `sudo shutdown -c` |
| **Suspend now** | `systemctl suspend` |
| **Fast file search** | `fd "pattern"` *(install: `sudo dnf install fd-find`)* |
| **Preview files** | `bat file` *(syntax-highlighted `cat` — `sudo dnf install bat`)* |
| **See disk usage visually** | `sudo dnf install ncdu && ncdu /` |
| **Monitor real-time logs** | `journalctl -f -u NetworkManager.service` |
| **Find large files (>100MB)** | `find /home -type f -size +100M -exec ls -lh {} \;` |

---

## ⚙️ System Tuning & Performance

### ▶️ **Enable EarlyOOM (prevents freezes)**  
Fedora disables it by default — but it’s golden for low-RAM systems:
```bash
sudo dnf install earlyoom
sudo systemctl enable --now earlyoom
