cask "spot" do
  version "0.3.10"
  sha256 "c7716049a2bfe5cc51b4f6903e28a5f35d315b9e2235e732117efa8482d03d28"

  url "https://github.com/kobums/spotlight/releases/download/v#{version}/Spot-#{version}.zip"
  name "Spot"
  desc "Launcher and keyboard-driven screen access app"
  homepage "https://github.com/kobums/spotlight"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "Spot.app"

  zap trash: [
    "~/Library/Application Support/Spot",
    "~/Library/Preferences/com.gowoobro.spot.plist",
  ]
end
