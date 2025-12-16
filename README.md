# Ping Check - Network Connectivity Monitor

A cross-platform network connectivity monitor that continuously checks connectivity to Google DNS (8.8.8.8) every 5 seconds. When connection fails, it emits an 882 Hz alert tone until connectivity is restored.

**Available for:** macOS (app), Linux (systemd service), Windows (VBScript)

## Files

- **PingCheck.app/** - macOS application bundle (production-ready, launchable from Spotlight)
- **ping-check-linux** - Linux executable wrapper for systemd
- **ping-check.service** - Linux systemd unit file
- **ping-check.vbs** - Windows VBScript launcher (silent, headless)
- **ping_check.sh** - Original Linux bash script
- **ping_check_mac.sh** - Original macOS bash script
- **ping_check.ps1** - Original Windows PowerShell script

## Quick Start

### macOS
1. Install sox: `brew install sox`
2. Copy `PingCheck.app` to `~/Applications/`
3. Launch from Spotlight (Cmd+Space, type "Ping Check")

### Linux (systemd)
1. Install dependencies: `sudo apt-get install beep`
2. Copy files:
   ```bash
   sudo cp ping-check-linux /usr/local/bin/ping-check
   sudo cp ping-check.service /etc/systemd/system/
   ```
3. Enable and start:
   ```bash
   sudo systemctl enable ping-check
   sudo systemctl start ping-check
   ```

### Windows
1. Right-click `ping-check.vbs` → "Run with PowerShell"
2. For auto-start on boot, create a scheduled task:
   - Open Task Scheduler
   - Create Basic Task → "Ping Check"
   - Set trigger to "At Startup"
   - Set action to run: `ping-check.vbs`

## Management

### macOS
- Launch: `open ~/Applications/PingCheck.app`
- Quit: Cmd+Q or `killall ping-check`
- Logs: `~/.ping-check/ping-check.log`

### Linux
- Status: `sudo systemctl status ping-check`
- Logs: `sudo journalctl -u ping-check -f`
- Stop: `sudo systemctl stop ping-check`

### Windows
- Stop: `taskkill /F /IM powershell.exe`

## Uninstall

### macOS
```bash
rm -rf ~/Applications/PingCheck.app
```

### Linux
```bash
sudo systemctl stop ping-check
sudo systemctl disable ping-check
sudo rm /etc/systemd/system/ping-check.service
sudo rm /usr/local/bin/ping-check
```

### Windows
Delete the scheduled task from Task Scheduler.

## Troubleshooting

- **No sound**: Verify audio device is working and volume is not muted
- **macOS - play command not found**: Reinstall sox: `brew install sox`
- **Linux - beep not found**: Install with `sudo apt-get install beep`
- **Multiple instances running**: Close existing instances before starting a new one
