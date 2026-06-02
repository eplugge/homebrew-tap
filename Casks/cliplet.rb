cask "cliplet" do
  version "0.2.0"
  sha256 "9739b0822aa6a744c4eb57fc812e4753c6e43f83dd9dc44e0debece132f78bc4"

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
