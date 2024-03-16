# Setting up PowerShell Environment

This repository contains scripts and configurations for setting up a customized PowerShell environment. It includes configurations for modules like Terminal-Icons and oh-my-posh, as well as setting up aliases for common commands like `nvim` and `ll`.

## Installation Steps

1. **Install Terminal-Icons Module:**

2. **Initialize oh-my-posh:**

3. **Set Aliases:**
- Set `vim` alias to `nvim`:
  ```
  Set-Alias vim nvim
  ```
- Set `ll` alias to `Get-ChildItem`:
  ```
  Set-Alias ll Get-ChildItem
  ```

## Usage

- After installation, the oh-my-posh theme "tonybaloney" will be applied to the PowerShell prompt.
- You can use the `vim` command to launch Neovim instead of the default vim editor.
- The `ll` command is aliased to `Get-ChildItem`, providing a convenient way to list directory contents.

Feel free to customize the configurations and aliases according to your preferences.
