# frozen_string_literal: true

cask "obsidian-note-panel" do
  version "0.5.5"
  sha256 "d08ad2c1d4a473a1f5293c414ad33658fd86a623a6c7438d00574c978073352d"

  url "https://github.com/nextster/obsidian-note-overlay/releases/download/#{version}/note-panel-#{version}.zip"
  name "Note Panel"
  desc "Floating note editor with native tabs for Obsidian"
  homepage "https://github.com/nextster/obsidian-note-overlay"

  depends_on macos: :ventura

  installer script: {
    executable: "note-panel",
    args:       ["install", "--registered"],
    sudo:       false,
  }
  binary "note-panel"

  uninstall script: {
    executable: "note-panel",
    args:       ["uninstall", "--all", "--keep-registry"],
    sudo:       false,
  }

  caveats <<~EOS
    First installation selects the only available known Obsidian vault.
    If no single vault can be detected, finish setup with:
      note-panel install

    Enable Note Panel in Community plugins and restart Obsidian.
    Upgrades update registered vaults. Uninstall preserves notes and settings.
    Remove and forget a single vault with: note-panel uninstall "/path/to/vault"
  EOS
end
