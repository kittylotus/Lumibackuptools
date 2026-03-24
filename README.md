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
