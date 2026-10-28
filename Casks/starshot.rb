cask "starshot" do
  version "0.3.1"
  sha256 "bbd926e229248afa8533dafa31755060ed216029d45b1b2d4a7a7810b12a86ee"

  url "https://github.com/cpython666/starshot/releases/download/v#{version}/Starshot_#{version}_aarch64.dmg"
  name "Starshot"
  name "星镜"
  desc "Local-first screenshot, annotation and image pinning tool"
  homepage "https://github.com/cpython666/starshot"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :monterey

  app "Starshot.app"

  caveats <<~EOS
    This is Starshot 0.3.1 for Apple Silicon Macs.
    It is not Apple-notarized; macOS may block the first launch.
    See the release notes before installing: https://github.com/cpython666/starshot/releases/tag/v0.3.1
  EOS
end
