cask "eden" do
  version "0.1.5"
  sha256 "d1cd0fa1442a0fbb5a6f19ef8e8e55444a42ee784f51a46469594ea17aad2f6b"

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
