# Deeptree Espanso for Windows

This repository contains ready‑to‑use [Espanso](https://espanso.org/) configuration files for the Deeptree team. Espanso runs in the background and expands short triggers into complete text snippets, saving time when writing emails or ticket notes.

The instructions below walk through installation on a Windows PC with no command line knowledge required.

## Quick Start

1. **Download the latest release**
   - Visit the [release page](https://github.com/iop098321qwe/deeptree_espanso_windows/releases/latest).
   - Under **Assets** click the `.zip` file, for example `deeptree_espanso_windows-v1.1.0.zip`, and wait for the download to finish.
2. **Extract the archive**
   - Open your Downloads folder, right‑click the downloaded file and choose **Extract All…**.
   - Pick a convenient location (such as the Desktop) and click **Extract**. The new folder will contain all configuration files.
3. **Run the setup script**
   - Inside the extracted folder find `Setup_Espanso_and_Configs.bat`.
   - Right‑click this file and choose **Run as administrator**. Windows may ask for permission.
   - The script will:
     1. Install Chocolatey if it is missing.
     2. Use Chocolatey to install Espanso.
     3. Copy all configuration files into `%APPDATA%\espanso`.
     4. Restart Espanso so it loads the new snippets.
   - When you see **Setup complete**, press any key to close the window.
4. **Confirm Espanso is running**
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

## Updating to the Latest Release

Espanso does not automatically pull in new versions of these configuration files.
Whenever a release is published on GitHub you can manually copy the updated
folders while keeping your personalized data safe.

1. **Close Espanso** – Right‑click the Espanso icon in the system tray and choose
   **Quit** so none of the files are locked.
2. **Download the new ZIP archive** – Visit the
   [release page](https://github.com/iop098321qwe/deeptree_espanso_windows/releases/latest)
   and under **Assets** click the file ending in `.zip` (for example
   `deeptree_espanso_windows-v1.1.0.zip`).
3. **Extract the ZIP file** – After the download finishes, locate the file in
   your Downloads folder, right‑click it and select **Extract All…**. Choose a
   convenient destination and click **Extract**.
4. **Open the extracted folder** – Inside the new `deeptree_espanso_windows`
   directory you will see folders such as `expansions_deeptree` and `global`.
5. **Open your Espanso directory** – In another File Explorer window type
   `%APPDATA%\espanso` in the address bar and press **Enter**.
6. **Copy over the updated folders** – Drag the `expansions_deeptree` and
   `global` folders from the extracted release into the `%APPDATA%\espanso`
   window. When Windows asks if you want to replace the existing files, choose
   **Replace the files in the destination**.
7. **Keep your personal data** – Do *not* copy the `expansions_personalized`
   folder or `variables_global\personalized_variables.yml`. Leaving these files
   untouched preserves your own snippets and personal information.
8. **Restart Espanso** – Launch Espanso from the Start menu or run
   `espanso restart` in PowerShell. The program will load the updated
   configuration and you can resume using your shortcuts.

## Troubleshooting

- If the setup script says administrator rights are required, right‑click `Setup_Espanso_and_Configs.bat` again and select **Run as administrator**.
- If you don’t see the Espanso icon after installation, open the Start menu, search for **Espanso** and launch it manually.

Once Espanso is running and your variables are filled in, you’ll be able to insert common text with short commands, streamlining your workflow.
