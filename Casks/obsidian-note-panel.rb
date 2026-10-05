# frozen_string_literal: true

cask "obsidian-note-panel" do
  version "0.5.4"
  sha256 "5ed4a63dadf1e5bede037f5db6a084dd6a20f72a663138361c54d388bbf5efc9"

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
