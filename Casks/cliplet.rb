cask "cliplet" do
  version "0.1.0"
  sha256 "8fa3947b47122b4a7f1f4cbe6d338d91110d35b64027a71dfb1d727fca7bb96d"

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
