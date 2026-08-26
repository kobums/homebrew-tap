cask "spot" do
  version "0.3.2"
  sha256 "1c1d8bd49bb1e2f0440f873890b03501034fc046ccd1a695f1d846cb9d0b8fd2"

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
