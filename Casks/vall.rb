cask "vall" do
  version "1.0-beta.8"
  sha256 "b1ebdee9ab1a4498eca1b0229e3a71fcb06e0b29974bac414e6fa5d15f9ed077"

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
