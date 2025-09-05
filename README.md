# Microsoft-Edge-Preferences-Automation-Script-macOS-
Microsoft Edge Preferences Automation Script (macOS)


# Microsoft Edge Preferences Automation Script (macOS)

This Bash script automates the process of managing the **Microsoft Edge Preferences file** on macOS.  
It handles backing up, replacing with a custom configuration, and restoring browser behavior by restarting Edge.

---

## ✨ Features
- Detects the currently logged-in user.  
- Locates the **Edge Preferences file** in the user profile.  
- Creates a backup of the original `Preferences` file in `~/Downloads`.  
- Replaces the Preferences file with a custom version from `~/Documents`.  
- Restarts **Microsoft Edge** multiple times to apply changes.  
- Cleans up by removing the modified Preferences file.  

---

## 📦 Installation & Usage

1. Clone the repository:
   ```bash
   git clone https://github.com/<your-username>/edge-preferences-automation.git
   cd edge-preferences-automation
Place your custom Preferences file at:

~/Documents/Preferences


Make the script executable:

chmod +x edge-cache-cookie-clear.sh


Run the script:

./edge-cache-cookie-clear.sh


✅ Workflow

Backup current Preferences file → ~/Downloads/Preferences.

Kill running Edge processes.

Replace Preferences file with the one from ~/Documents.

Open & close Edge to apply the configuration.

Clean up the modified Preferences file.

⚙️ Requirements

macOS

Microsoft Edge installed

Custom Preferences file prepared

📜 License

This project is licensed under the MIT License.
Feel free to modify or adapt it for your needs.
