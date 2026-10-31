# quiinthieu/homebrew-tap

Official [Homebrew](https://brew.sh) tap for [**Niwa**](https://github.com/quiinthieu/niwa) — a cozy idle garden for your terminal and menu bar.

## Install

```sh
brew tap quiinthieu/tap
# On Homebrew 7+, trust the third-party tap if prompted:
brew trust --tap quiinthieu/tap

# Terminal TUI & CLI (`niwa`)
brew install quiinthieu/tap/niwa

# Optional macOS menu bar companion (`Niwa.app`, depends on `niwa`)
brew install --cask --no-quarantine quiinthieu/tap/niwa-garden
```

> **Gatekeeper note ($0 open-source builds):** When `Niwa.app` is built without a paid Apple Developer ID certificate, it is signed ad-hoc (`codesign --sign -`). Passing `--no-quarantine` on install (or running `xattr -dr com.apple.quarantine "/Applications/Niwa.app"`) clears macOS quarantine on first launch.

## Packages

| Type | Name | Installs |
|---|---|---|
| Formula | `quiinthieu/tap/niwa` | `niwa` terminal TUI, CLI, prompt glyph & optional daemon |
| Cask | `quiinthieu/tap/niwa-garden` | `Niwa.app` macOS 14+ menu bar companion (depends on `niwa`) |
