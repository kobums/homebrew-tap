cask "eden" do
  version "0.2.0"
  sha256 "029dd197537c9168488218445e284d01d14b885235e4018c4bb5f845eb3b7288"

  url "https://github.com/kobums/eden/releases/download/v#{version}/eden-#{version}.zip"
  name "eden"
  desc "여러 터미널의 장점을 모은 macOS 네이티브 터미널"
  homepage "https://github.com/kobums/eden"

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
