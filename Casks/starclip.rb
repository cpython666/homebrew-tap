cask "starclip" do
  version "0.2.2"
  sha256 "600784a9fc48ffab2702cdbef66628dc71a34061c7566242ffd9bf075a428cb4"

  url "https://github.com/cpython666/starclip/releases/download/v#{version}/Starclip_#{version}_aarch64.dmg"
  name "Starclip"
  name "星笺"
  desc "Local-first clipboard history and code snippet manager"
  homepage "https://github.com/cpython666/starclip"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :macos

  app "Starclip.app"

  caveats <<~EOS
    See the release notes for notarization status and installation instructions:
    https://github.com/cpython666/starclip/releases/tag/v#{version}
  EOS
end
