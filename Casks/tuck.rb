cask "tuck" do
  version "1.0-beta.4"
  sha256 "a2d2adc291fc5f5a9325a7720932e1ba5759cfd0e86e7a805e1cfe6c1a963f0b"

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
