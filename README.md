# PC Cleaner Utility

A powerful batch script to help clean up junk files, free disk space, and flush DNS cache — all from a single click.

---

## Features

- Deletes system-wide temporary and log files
- Clears browser temp/cache folders (IE legacy)
- Flushes DNS cache
- Shows free disk space
- Optional logging to a file

---

## How to Use

1. **Download or create the script**  
   - Copy the contents of [`PC_Cleaner.bat`](./PC_Cleaner.bat) into a Notepad file.
   - Save it as `PC_Cleaner.bat` (be sure to select **"All Files"** and not `.txt`).

2. **Run as Administrator**  
   - Right-click the file and choose **"Run as administrator"** to ensure it has permission to clean protected folders.

3. **Wait and watch**  
   - The script will display progress as it:
     - Flushes DNS
     - Deletes junk files
     - Recreates `Temp` folders
     - Shows available disk space

4. **Check the Log (Optional)**  
   - A log file named `cleaner_log.txt` will be created in the same directory with details of deleted items and disk space info.

---

## ⚠️ Warnings

> **Use at your own risk.**  
> This script deletes files system-wide. Although it targets only safe locations, make sure you understand what each line does before running it.

- Make backups if unsure
- Some actions may not apply on newer Windows versions (like IE cache)
- Best run occasionally — not daily

---

## 📂 File Structure

