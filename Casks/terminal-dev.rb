cask "terminal-dev" do
  version "0.1.1"
  sha256 "ccc1e6a8ece4ec2f06501615485991dfa713e09d0eb9ee0a02e1932bed3a1dba"

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
