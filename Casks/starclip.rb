cask "starclip" do
  version "0.1.0-alpha.2"
  sha256 "c48568607037ec804613be8b2307e3041806849327b27aacd71d579062133240"

  url "https://github.com/cpython666/starclip/releases/download/v#{version}/Starclip_#{version}_aarch64.dmg"
  name "Starclip"
  name "星笺"
  desc "Local-first clipboard history and code snippet manager"
  homepage "https://github.com/cpython666/starclip"

  depends_on arch: :arm64
  depends_on :macos

  app "Starclip.app"

  caveats <<~EOS
    This is the 0.1.0-alpha.2 development preview for Apple Silicon Macs.
    It is not Apple-notarized; macOS may block the first launch.
    See the release notes before installing: https://github.com/cpython666/starclip/releases/tag/v0.1.0-alpha.2
  EOS
end
