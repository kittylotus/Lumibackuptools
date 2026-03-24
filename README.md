# lumi-backup-tools

Simple backup & restore tools for Lumiverse  
*(especially for Termux + proot users)*

You don’t need to suffer trying to find termux android/data anymore <3

---

## ✨ Features

- One-command backup
- Interactive restore (pick by number, filename, or latest)
- Configurable paths
- Works with Termux shared storage

---

## 📦 What gets backed up

Lumiverse is self-contained. These tools back up:

- `data/db` 
- `data/lumiverse.identity`
- `.env`

---

## 🚀 Install

Inside your proot environment:

```bash
git clone https://github.com/kittylotus/Lumibackuptools
cd Lumibackuptools
bash install.sh
```

## 🪐 If prompted to add the path to bashrc, run:
```echo 'export PATH="$HOME/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc
```

---

## 🛠 Usage
### Create a backup
```lumibackup```

Your backup will be saved to:
~/storage/shared/Download/Lumibackup

### Restore 
```lumirestore```

You’ll see a list like:

```[1] lumi_backup_2026-03-24_08-29-14.tar.gz
[2] lumi_backup_2026-03-24_09-41-58.tar.gz
```

Then just type:
1

You can also: 

### Restore latest backup
```lumirestore latest```

---

# ⚙️ Config

## Config file location (edit if using in a different system):

```~/.config/lumiverse-tools.conf```

## Default (fine for termux):

```LUMI_DIR="$HOME/Lumiverse"
TERMUX_HOME="/data/data/com.termux/files/home"
BACKUP_DIR="$TERMUX_HOME/storage/shared/Download/Lumibackup"
```

You can edit this file to change where Lumiverse is located or where backups are stored.
