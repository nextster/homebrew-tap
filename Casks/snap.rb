# frozen_string_literal: true

cask "snap" do
  version "1.0.0"
  sha256 "49cda110929aeca60152f43e09eab2f6edbc136a3569b24667bad1178db3a6c4"

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
