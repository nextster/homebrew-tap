cask "vall" do
  version "1.0-beta.1"
  sha256 "3aa346d22434998633a66eec6e49ab0cc2dee90247f29e650b5fca380a0b7cf5"

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
