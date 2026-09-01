# frozen_string_literal: true

cask "snap" do
  version "1.0.1"
  sha256 "77bc3de6576039b751efb0f40689f3719a486eb7db08d2cecd5baa886b015f27"

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
