cask "eden" do
  version "0.2.1"
  sha256 "fd81089c040be5246de74c4b588662bbd0079db3d497a25a70152694c0a3650c"

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
