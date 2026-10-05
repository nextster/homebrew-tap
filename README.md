# nextster Homebrew Tap

Install Note Panel for Obsidian on macOS 13 or later:

```sh
brew install --cask nextster/tap/obsidian-note-panel
```

The first installation automatically selects the only available known Obsidian
vault with the default `.obsidian` folder. If several vaults are available, or
none can be detected, finish setup with:

```sh
note-panel install
```

This command opens a folder chooser; a vault path can also be passed directly.
Enable Note Panel in Obsidian's Community plugins and restart Obsidian.
Homebrew does not open dialogs or start Obsidian. Upgrade registered vault
installations with:

```sh
brew upgrade --cask nextster/tap/obsidian-note-panel
```

Updates use your saved choice. They do not discover a new vault if you have not
chosen one or removed the last registered installation.

Remove the Homebrew command and its registered plugin installations with:

```sh
brew uninstall --cask nextster/tap/obsidian-note-panel
```

Notes and plugin settings are preserved. To remove and forget one vault, use
`note-panel uninstall "/path/to/vault"` before uninstalling the cask. Reinstalling
the cask restores previously registered vault installations.

Source and releases: [`nextster/obsidian-note-overlay`](https://github.com/nextster/obsidian-note-overlay).

Install Chromium Bridge on macOS:

```sh
brew install nextster/tap/chromium-bridge
chromium-bridge setup
```

The first command installs the versioned native companion. The explicit setup
step registers it with supported Chromium browsers and installs the Codex
plugin. The browser extension is distributed through its Unlisted Chrome Web
Store listing and requires the browser's normal installation confirmation.

Upgrade later with:

```sh
brew upgrade chromium-bridge
chromium-bridge setup
```

Install Tolk on macOS 26 or later:

```sh
brew install --cask nextster/tap/tolk
```

Upgrade later with:

```sh
brew upgrade --cask tolk
```

Tolk releases are signed with Developer ID, notarized by Apple and published
in [`nextster/tolk-releases`](https://github.com/nextster/tolk-releases/releases).

Install Snap on macOS 26 or later:

```sh
brew install --cask nextster/tap/snap
```

Upgrade later with:

```sh
brew upgrade --cask snap
```

Snap releases are signed with Developer ID, notarized by Apple and published
in [`nextster/snap-releases`](https://github.com/nextster/snap-releases/releases).

Install Tuck on macOS 14 or later:

```sh
brew install --cask nextster/tap/tuck
```

Upgrade later with:

```sh
brew upgrade --cask nextster/tap/tuck
```

Tuck releases are signed with Developer ID, notarized by Apple and published
in [`nextster/tuck-releases`](https://github.com/nextster/tuck-releases/releases).

Install Vall on macOS 14 or later:

```sh
brew install --cask nextster/tap/vall
```

Launch Vall once after installation. The app installs or updates its bundled
screen saver automatically. Vall releases are signed with Developer ID,
notarized by Apple and published in
[`nextster/vall-releases`](https://github.com/nextster/vall-releases/releases).
