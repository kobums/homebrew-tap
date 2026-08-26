cask "spot" do
  version "0.3.4"
  sha256 "4c8edd954a73e3db2cebac4132065a5b911d29f07924aff485f1dea3713ad47e"

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
