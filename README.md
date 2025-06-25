# Deeptree Espanso for Windows

This repository contains ready‑to‑use [Espanso](https://espanso.org/) configuration files for the Deeptree team. Espanso runs in the background and expands short triggers into complete text snippets, saving time when writing emails or ticket notes.

The instructions below walk through installation on a Windows PC with no command line knowledge required.

## Quick Start

1. **Download the files**
   - On GitHub click the green **Code** button and choose **Download ZIP**.
   - Right‑click the downloaded archive and select **Extract All…** to unpack it.
2. **Run the setup script**
   - Inside the extracted folder find `Setup_Espanso_and_Configs.bat`.
   - Right‑click this file and choose **Run as administrator**. Windows may ask for permission.
   - The script will:
     1. Install Chocolatey if it is missing.
     2. Use Chocolatey to install Espanso.
     3. Copy all configuration files into `%APPDATA%\espanso`.
     4. Restart Espanso so it loads the new snippets.
   - When you see **Setup complete**, press any key to close the window.
3. **Confirm Espanso is running**
   - Look for the Espanso icon in the system tray (near the clock). If it isn’t there search for **Espanso** in the Start menu and open it.

## Personalizing Your Information

1. Open File Explorer and browse to `%APPDATA%\espanso\variables_global`.
2. Open `personalized_variables.yml` in Notepad.
3. Each entry has an `echo:` line. Replace the example text with your information.
   Example:
   ```yaml
   - label: First Name
     name: myfirst
     comment: "Input your first name in the 'echo' field."
     type: echo
     params:
       echo: Dallas
   ```
4. Save the file and close Notepad.
5. Reload Espanso by right‑clicking the tray icon and choosing **Restart**, or run `espanso restart` in PowerShell.
6. Repeat for every value (last name, emails, title and so on).

## Using the Expansions

After setup you can type any trigger to insert its text. For instance typing `;greet` creates a friendly greeting. A full reference with examples for every trigger is available in [EXPANSIONS.md](EXPANSIONS.md).

## Updating or Creating Expansions

All snippet definitions live in the `expansions_deeptree` and `expansions_personalized` folders. Open any `.yml` file in Notepad to adjust an existing snippet or to copy one as a template for a new trigger. When you finish editing, restart Espanso so it reads the updated files.

## Troubleshooting

- If the setup script says administrator rights are required, right‑click `Setup_Espanso_and_Configs.bat` again and select **Run as administrator**.
- If you don’t see the Espanso icon after installation, open the Start menu, search for **Espanso** and launch it manually.

Once Espanso is running and your variables are filled in, you’ll be able to insert common text with short commands, streamlining your workflow.
