cask "vall" do
  version "1.0-beta.4"
  sha256 "f30137caf3c324ec3dd37d44c3d5a761164e36cdc8ced6fec0c2568560fba7af"

  url "https://github.com/nextster/vall-releases/releases/download/v#{version}/Vall-1.0.dmg"
  name "Vall"
  desc "Animated desktop visuals with a matching screen saver"
  homepage "https://github.com/nextster/vall-releases"

  depends_on macos: :sonoma

  app "Vall.app"

  zap trash: [
    "~/Library/Application Support/dev.nextster.wall",
    "~/Library/Caches/dev.nextster.wall",
    "~/Library/Preferences/dev.nextster.wall.plist",
    "~/Library/Screen Savers/Vall.saver",
  ]

  caveats <<~EOS
    Vall runs as a menu bar app. Launch it once to install or update the bundled
    Vall screen saver for your user account.
  EOS
end
