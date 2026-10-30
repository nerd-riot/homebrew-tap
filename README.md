# nerd-riot/homebrew-tap

Official Homebrew Tap for [DBNerd](https://github.com/nerd-riot/db-nerd) — Modern, lightning-fast database client built with Tauri and React.

## 📦 Installation

To install **DBNerd** via Homebrew Cask, simply run:

```bash
brew install --cask nerd-riot/tap/dbnerd
```

Or tap the repository first and then install:

```bash
brew tap nerd-riot/tap
brew install --cask dbnerd
```

## 🔄 Updates

To upgrade DBNerd to the latest release:

```bash
brew upgrade --cask dbnerd
```

## 🗑️ Uninstall

To uninstall DBNerd:

```bash
brew uninstall --cask dbnerd
```

To also remove application configuration and cached data:

```bash
brew uninstall --cask --zap dbnerd
```

## 🛡️ macOS Gatekeeper & Security

DBNerd installed via this tap automatically configures macOS Gatekeeper quarantine attributes during installation (`xattr -cr`), allowing the app to launch seamlessly without `"damaged app"` or unsigned developer warnings.

---

### Links & Resources
- **Source Code**: [nerd-riot/db-nerd](https://github.com/nerd-riot/db-nerd)
- **Releases**: [DBNerd Releases](https://github.com/nerd-riot/db-nerd/releases)
- **Issues & Discussions**: [GitHub Issues](https://github.com/nerd-riot/db-nerd/issues)
