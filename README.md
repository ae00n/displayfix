# displayfix

macOS scrambles display arrangement on dock because both monitors report the
same EDID serial (0x01010101). launchd watches the windowserver plist and
re-applies the correct layout.

Setup:
  brew install displayplacer
  cp displayfix.sh ~/bin/ && chmod +x ~/bin/displayfix.sh
  cp sh.vatra.displayfix.plist ~/Library/LaunchAgents/
  launchctl bootstrap gui/$(id -u) ~/Library/LaunchAgents/sh.vatra.displayfix.plist

UUIDs are machine-specific. Regenerate with: displayplacer list | tail -1
