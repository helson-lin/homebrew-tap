# Homebrew Tap

Homebrew tap for software published by `helson-lin`.

## Install

Tap the repository:

```bash
brew tap helson-lin/tap
```

Install CLI formulas:

```bash
brew install doke
brew install of
brew install hui
```

Install the Dual macOS app:

```bash
brew install --cask dual
```

Or install directly without tapping first:

```bash
brew install helson-lin/tap/doke
brew install helson-lin/tap/of
brew install helson-lin/tap/hui
brew install --cask helson-lin/tap/dual
```

## Notes for Dual

`Dual` is currently shipped as an unsigned, unnotarized test build. After install,
macOS may block first launch. If that happens:

```bash
xattr -cr /Applications/Dual.app
```
