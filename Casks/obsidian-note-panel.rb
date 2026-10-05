# frozen_string_literal: true

cask "obsidian-note-panel" do
  version "0.5.2"
  sha256 "3bd92feba631febeee90a179fd4953a222babd6df17918211a6fa7e4c0a50add"

  url "https://github.com/nextster/obsidian-note-panel/releases/download/#{version}/note-panel-#{version}.zip"
  name "Note Panel"
  desc "Floating note editor with native tabs for Obsidian"
  homepage "https://github.com/nextster/obsidian-note-panel"

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
    Choose an Obsidian vault with:
      note-panel install

    Enable Note Panel in Community plugins and restart Obsidian.
    Upgrades update registered vaults. Uninstall preserves notes and settings.
    Remove and forget a single vault with: note-panel uninstall "/path/to/vault"
  EOS
end
