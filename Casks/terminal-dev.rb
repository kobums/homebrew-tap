cask "terminal-dev" do
  version "0.1.2"
  sha256 "231026d5c7b5b98459afd5644dcdaabd57d701ee1c938756d7db8be617197d56"

  url "https://github.com/kobums/terminal/releases/download/v#{version}/terminal-dev-#{version}.zip"
  name "terminal-dev"
  desc "여러 터미널의 장점을 모은 macOS 네이티브 터미널"
  homepage "https://github.com/kobums/terminal"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :big_sur

  app "terminal-dev.app"

  zap trash: [
    "~/.config/terminal-dev",
    "~/.cache/terminal-dev",
  ]
end
