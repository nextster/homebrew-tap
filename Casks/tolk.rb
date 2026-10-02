# frozen_string_literal: true

cask "tolk" do
  version "0.1.0-beta.5"
  sha256 "6c3fb47e5bce58df9704b99b07a59e7fef14284cc27d4d0d1e90d2c63ade2215"

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
