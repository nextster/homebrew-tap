# frozen_string_literal: true

cask "snap" do
  version "1.0.2"
  sha256 "d223d23f79ced64b53410ce12fa7bd9d1177f8635657ae1b253379c038049755"

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
