cask "tuck" do
  version "1.0-beta.3"
  sha256 "0869f734118f96fa02cfea350f4ba033b2232ae4375171efefda76620e0fe464"

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
