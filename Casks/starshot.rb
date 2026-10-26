cask "starshot" do
  version "0.3.0"
  sha256 "546824f9ebf3bcda889fc7ac841b23d6ea530aa473bb01bf9b25863b1e11aa4d"

  url "https://github.com/cpython666/starshot/releases/download/v#{version}/Starshot_#{version}_aarch64.dmg"
  name "Starshot"
  name "星镜"
  desc "Local-first screenshot, annotation and image pinning tool"
  homepage "https://github.com/cpython666/starshot"

  livecheck do
    skip "Development previews are updated manually"
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :monterey

  app "Starshot.app"

  caveats <<~EOS
    This is the 0.3.0 development preview for Apple Silicon Macs.
    It is not Apple-notarized; macOS may block the first launch.
    See the release notes before installing: https://github.com/cpython666/starshot/releases/tag/v0.3.0
  EOS
end
