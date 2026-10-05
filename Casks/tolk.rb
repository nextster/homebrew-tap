# frozen_string_literal: true

cask "tolk" do
  version "0.1.0-beta.9"
  sha256 "5dc275dd52bc280d5a5b2c34a8f590e13294a31e3e5ac2bb6a2d6db1a89ba6ae"

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
