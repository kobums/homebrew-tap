cask "terminal-dev" do
  version "0.1.0"
  sha256 "5f64025b65062e0b49010c724c1e1839b9fc86563005f7fc889d79e78a8d8a04"

  url "https://github.com/kobums/terminal/releases/download/v#{version}/terminal-dev-#{version}.zip"
  name "terminal-dev"
  desc "여러 터미널의 장점을 모은 macOS 네이티브 터미널"
  homepage "https://github.com/kobums/terminal"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "terminal-dev.app"

  zap trash: [
    "~/.config/terminal-dev",
    "~/.cache/terminal-dev",
  ]
end
