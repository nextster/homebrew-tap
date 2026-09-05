# frozen_string_literal: true

cask "snap" do
  version "1.0.3"
  sha256 "9acf30c7f0ba824c617d787d21aaa54d6fd649d4fa4ca4e517b5c7a6470845ab"

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
