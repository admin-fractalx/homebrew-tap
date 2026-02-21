cask "clipmindx" do
  version "0.0.2"
  sha256 "a50a40ed64e1982ab03c38a89e2632604f7686d2f475e2ff2535258e6212fcf2"

  url "https://github.com/admin-fractalx/clipmindx-mac/releases/download/v#{version}/ClipMindX-#{version}.zip"
  name "ClipMindX"
  desc "ClipMindX for macOS"
  homepage "https://github.com/admin-fractalx/clipmindx-mac"

  depends_on macos: ">= :sonoma"

  app "ClipMindX.app"

  zap trash: []
end
