# Amber RC

## .bashrc
Add to `.bashrc`
```bashrc
PERSONAL_RC="${HOME}/.local/amber-rc/amber.rc"
if [ -f ${PERSONAL_RC} ]; then
  . ${PERSONAL_RC}
fi
```

## VS Code Settings:
User settings.json location

Depending on your platform, the user settings file is located here:

| Platform | Path |
| --- | :--- |
| Windows |`%APPDATA%\Code\User\settings.json` |
| macOS | `$HOME/Library/Application\ Support/Code/User/settings.json` |
| Linux | `$HOME/.config/Code/User/settings.json` |

