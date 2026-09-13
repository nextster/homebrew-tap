# frozen_string_literal: true

cask "snap" do
  version "1.0.4"
  sha256 "a89b6277221125b3804c667ecfcf2abc7177debb33b75a99a52979f88728f544"

  url "https://github.com/nextster/snap-releases/releases/download/v#{version}/Snap-#{version}.dmg"
  name "Snap"
  desc "Instant Spaces switching with a system Command-Tab replacement"
  homepage "https://github.com/nextster/snap-releases"

  depends_on macos: :tahoe

  app "Snap.app"

  zap trash: "~/Library/Preferences/dev.artem.snap.plist"

  caveats <<~EOS
    Snap needs Accessibility permission to intercept trackpad gestures and
    Command-Tab. Grant it after the first launch.
  EOS
end
