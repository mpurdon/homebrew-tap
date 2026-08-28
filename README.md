# mpurdon/homebrew-tap

Homebrew tap for:

- [sleipnir](https://github.com/mpurdon/sleipnir) — a Norse-themed AWS SSO
  credential manager.
- [pontifex](https://github.com/mpurdon/pontifex) — bridge-keeper for an
  EventBridge event bus: browse, edit, validate and register schemas.

```sh
brew install --cask mpurdon/tap/sleipnir-aws
brew install --cask mpurdon/tap/pontifex
```

sleipnir isn't notarized yet; if Gatekeeper objects on first launch,
right-click → Open, or run `xattr -dr com.apple.quarantine /Applications/sleipnir.app`.
