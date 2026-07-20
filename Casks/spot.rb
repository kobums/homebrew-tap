cask "spot" do
  version "0.1.2"
  sha256 "c522840b8d2499c2029235e8ed70af5fd29480e91c2fda3726a64b899dbd4f70"

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
