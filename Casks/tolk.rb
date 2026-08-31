# frozen_string_literal: true

cask "tolk" do
  version "0.1.0-beta.3"
  sha256 "ab0c12f0d8c7566c0818c00ad92ba9383369bd668391f2c4d32e481f6c3a7453"

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
