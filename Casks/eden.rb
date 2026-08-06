cask "eden" do
  version "0.1.4"
  sha256 "fe6179182cb09c9c7ec56a114ee809199792fecdab8061f4373ac2ff98485133"

  url "https://github.com/kobums/terminal/releases/download/v#{version}/eden-#{version}.zip"
  name "eden"
  desc "여러 터미널의 장점을 모은 macOS 네이티브 터미널"
  homepage "https://github.com/kobums/terminal"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :big_sur

  app "eden.app"

  zap trash: [
    "~/.config/eden",
    "~/.cache/eden",
  ]
end
