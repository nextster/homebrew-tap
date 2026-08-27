cask "tuck" do
  version "1.0-beta.1"
  sha256 "4ac0f990a1c2c6d0e2a61892cad38c2bc87e29032027f1b87585b77e910e4315"

  url "https://github.com/nextster/tuck-releases/releases/download/v#{version}/Tuck-1.0.dmg"
  name "Tuck"
  desc "Local-first Markdown notes and shared task lists"
  homepage "https://github.com/nextster/tuck-releases"

  depends_on macos: :sonoma

  app "Tuck.app"

  zap trash: [
    "~/Library/Application Support/dev.nextster.tuck",
    "~/Library/Caches/dev.nextster.Tuck",
    "~/Library/Preferences/dev.nextster.Tuck.plist",
  ]
end
