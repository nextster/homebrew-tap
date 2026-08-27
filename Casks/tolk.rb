cask "tolk" do
  version "0.1.0-beta.1"
  sha256 "1dc72d106f1bd83cf68489a0024e2e648e85f15650bd486941d55131567b1ce8"

  url "https://github.com/nextster/tolk-releases/releases/download/v#{version}/Tolk-0.1.0.dmg"
  name "Tolk"
  desc "Compact native translator for selected text"
  homepage "https://github.com/nextster/tolk-releases"

  depends_on macos: ">= :tahoe"

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
