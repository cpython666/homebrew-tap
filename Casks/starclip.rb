cask "starclip" do
  version "0.1.0-alpha.1"
  sha256 "9c816fa6a034a24fcfc63a024b4f7fb766703260c4ce94dfcac0fea69fd3deac"

  url "https://github.com/cpython666/starclip/releases/download/v#{version}/Starclip_0.1.0_aarch64.dmg"
  name "Starclip"
  name "星笺"
  desc "Local-first clipboard history and code snippet manager"
  homepage "https://github.com/cpython666/starclip"

  depends_on arch: :arm64
  depends_on :macos

  app "Starclip.app"

  caveats <<~EOS
    This is the 0.1.0-alpha.1 development preview for Apple Silicon Macs.
    It is not Apple-notarized; macOS may block the first launch.
    See the release notes before installing: https://github.com/cpython666/starclip/releases/tag/v0.1.0-alpha.1
  EOS
end
