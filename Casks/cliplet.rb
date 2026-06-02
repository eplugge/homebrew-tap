cask "cliplet" do
  version "0.2.0"
  sha256 "4124693b282f612bb28fcb73c02657c5a86abdd73ddd9c2456c33f9ce34ca84c"

  url "https://github.com/eplugge/Cliplet/releases/download/v#{version}/Cliplet-#{version}.dmg"
  name "Cliplet"
  desc "Clipboard history that lets you paste from the past"
  homepage "https://github.com/eplugge/Cliplet"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "Cliplet.app"

  zap trash: [
    "~/Library/Application Support/Cliplet",
    "~/Library/Preferences/nu.plugge.macOS.cliplet.plist",
  ]
end
