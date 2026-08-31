cask "tuck" do
  version "1.0-beta.2"
  sha256 "ddd90ad819b4f4cef380c6f5aa9ac2078eefeb2d6bc03a27cee88534d7d64012"

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
