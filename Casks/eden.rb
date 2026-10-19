cask "eden" do
  version "0.3.0"
  sha256 "362ee31eb3a7e7f650e2ae1d3c0dc2eb4188906ec35cdeb43f48fca5daafede2"

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
  # eden list 등 CLI — 같은 바이너리가 인자에 따라 GUI/CLI로 나뉜다
  binary "#{appdir}/eden.app/Contents/MacOS/eden"

  zap trash: [
    "~/.config/eden",
    "~/.cache/eden",
  ]
end
