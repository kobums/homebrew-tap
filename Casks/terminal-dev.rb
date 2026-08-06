cask "terminal-dev" do
  version "0.1.3"
  sha256 "a47f16842303b1b221d53562372a32f24aaa3cf6f01e4580d8e9d1169eaa58a3"

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
