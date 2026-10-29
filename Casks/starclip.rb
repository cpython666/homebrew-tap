cask "starclip" do
  version "0.2.3"
  sha256 "18457b1b5f5878dbdcc51ebcc9db90ecf9cc14263537a4d72525c24d7045a072"

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
