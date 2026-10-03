# frozen_string_literal: true

cask "tolk" do
  version "0.1.0-beta.6"
  sha256 "f6ae6e665a5557e5e660bb0c5a58a7faa5f65f28328bd903fdb093f9c31a2929"

  url "https://github.com/nextster/tolk-releases/releases/download/v#{version}/Tolk-0.1.0.dmg"
  name "Tolk"
  desc "Compact native translator for selected text"
  homepage "https://github.com/nextster/tolk-releases"

  depends_on macos: :tahoe

  app "Tolk.app"

  zap trash: [
    "~/Library/Application Support/Tolk",
    "~/Library/Preferences/dev.nextster.tolk.plist",
    "~/Library/Preferences/dev.nextster.tolk.preferences.plist",
  ]

  caveats <<~EOS
    Tolk needs Accessibility permission to read selected text. Complete the
    first-launch setup after installation.
  EOS
end
